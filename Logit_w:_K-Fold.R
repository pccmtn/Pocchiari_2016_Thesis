## LOGISTIC REGRESSION MODEL 0 (WITH CROSS VALIDATION)

## PREDICTION WITH PARTIAL DATASET (TRAIN AND TEST DATA)

## Cross-validation with a for loop
set.seed(100)
## Set K and get permutation of the rows
K <- 10
n <- nrow(copyDates)
perm <- sample.int(n)
## Vector indicating the folds (check that length is correct)
folds <- rep(seq_len(K), each = ceiling(n / K))[perm]
length(folds) == n
## Vector to store test predictions in
preds <- vector("numeric", length = n)
for (i in seq_len(K)) { #loop for all folds
  trainInd <- folds != i #shows which observation is in my training set
  testInd <- !trainInd
  fit_fold <- glm(loans.status ~ loans.sector + loans.loan_amount + loans.lender_count +
                   loans.bonus_credit_eligibility + loans.terms.repayment_interval +
                   loans.terms.repayment_term + loans.terms.loss_liability.nonpayment +
                   loans.journal_totals.entries + partners.status + partners.rating +
                   partners.delinquency_rate + partners.default_rate + partners.total_amount_raised +
                   partners.loans_posted + partners.charges_fees_and_interest + 
                   partners.average_loan_size_percent_per_capita_income +
                   partners.loans_at_risk_rate + partners.portfolio_yield +
                   partners.profitability + Antipoverty +
                   Vulnerable_Group + Client_Voice +
                   Family_Community + Enterpreneurial_Support +
                   Facilitation_Savings + Innovation + score, 
                 family = binomial(link = "logit"), 
                 data = copyDates, subset = trainInd)
  
preds[!trainInd] <- predict(fit_fold, newdata = copyDates[!trainInd, ],
                              type = "response")
}

preds <- predict(fit_fold, newdata = copyDates,
                            type = "response")
summary(fit_fold)


train <- copyDates[trainInd, ]
test <- copyDates[testInd, ]
test$prediction <-  preds[!trainInd]
nrow(test)

library(ggplot2)
ggplot(test, aes(x = prediction, group = loans.status, fill = loans.status)) +
  geom_density(alpha = 0.5) +
  labs(title = "Prediction Accuracy", x = "Probability of Loan Success", y = "Density") +
  xlim(0.8,1) + theme_bw(base_size = 16) +
  theme(legend.position = "right")


set.seed(100)
#Model 0

p0_seq <- seq(from = 0.001, to = 0.999, length = 100)
overall_error <- fpos <- fneg <- tpos <- vector("double", 
                                                length = length(p0_seq))
for (i in seq_along(p0_seq)) {
  preds_fact <- cut(preds[testInd], breaks = c(0, p0_seq[i], 1), 
                    labels = c("Paid", "Defaulted"))
  confmat <- table(test$loans.status, preds_fact)
  overall_error[i] <-  1 - sum(diag(confmat)) / nrow(test)
  confmat_prop <- prop.table(confmat, 1)
  fpos[i] <- confmat_prop[1, 2]
  tpos[i] <- confmat_prop[2, 2]
  fneg[i] <- confmat_prop[2, 1]
}

## Plots of results
df <- data.frame(overall = overall_error, false_positive = fpos, false_negative = fneg, 
                 true_positive = tpos, threshold = p0_seq)

min <- min(df$overall)
minn <- df[(df$overall == min), ] 

library("reshape2")
df_melt <- melt(df[, -4], id.vars = "threshold") 
CV_p0_Model0 <- ggplot(data = df_melt, aes(x = threshold, y = value, group = variable, colour = variable)) + 
  geom_path(size = 0.75) + xlim(0,1) +
  labs(title = "Optimal Probability Threshold Model 0: Results of Cross-Validation")

plot(fit_fold)

# prediction with K-Fold

glm.pred=rep("defaulted",length(copyDates$prediction))
glm.pred[(preds[!trainInd]) >.5]="paid"

table(glm.pred,test$loans.status)
(1438+12) /length(preds[!trainInd])
mean(glm.pred == test$loans.status) 
## logistic regression correctly predicted 97.6 % of the time

# prediction with K-Fold and optimal p threshold

glm.pred=rep("defaulted",length(copyDates$prediction))
glm.pred[(preds[!trainInd]) >.55]="paid"

table(glm.pred,test$loans.status)
(1436+16) /length(preds[!trainInd])
mean(glm.pred == test$loans.status)


## PREDICTION WITH FULL DATASET

train <- copyDates[trainInd, ]
test <- copyDates
test$prediction <-  preds
nrow(test)

library(ggplot2)
ggplot(test, aes(x = prediction, group = loans.status, fill = loans.status)) +
  geom_density(alpha = 0.5) +
  labs(title = "Prediction Accuracy", x = "Probability of Loan Success", y = "Density") +
  xlim(0.8,1) + theme_bw(base_size = 16) +
  theme(legend.position = "right")


set.seed(100)
#Model 0

p0_seq <- seq(from = 0.001, to = 0.999, length = 100)
overall_error <- fpos <- fneg <- tpos <- vector("double", 
                                                length = length(p0_seq))
for (i in seq_along(p0_seq)) {
  preds_fact <- cut(preds, breaks = c(0, p0_seq[i], 1), 
                    labels = c("Paid", "Defaulted"))
  confmat <- table(test$loans.status, preds_fact)
  overall_error[i] <-  1 - sum(diag(confmat)) / nrow(test)
  confmat_prop <- prop.table(confmat, 1)
  fpos[i] <- confmat_prop[1, 2]
  tpos[i] <- confmat_prop[2, 2]
  fneg[i] <- confmat_prop[2, 1]
}

## Plots of results
df <- data.frame(overall = overall_error, false_positive = fpos, false_negative = fneg, 
                 true_positive = tpos, threshold = p0_seq)
colMeans(x = df)

min <- min(df$overall)
minn <- df[(df$overall == min), ] 

library("reshape2")
df_melt <- melt(df[, -4], id.vars = "threshold") 
CV_p0_Model0 <- ggplot(data = df_melt, aes(x = threshold, y = value, group = variable, colour = variable)) + 
  geom_path(size = 0.75) + xlim(0,1) +
  labs(title = "Optimal Probability Threshold Model 0: Results of Cross-Validation")

plot(fit_fold)

# prediction with K-Fold

glm.pred=rep("defaulted",length(test$prediction))
glm.pred[(preds)> 0.5]="paid"

table(glm.pred,test$loans.status)
(14410+141) /length(preds)

glm.pred=rep("defaulted",length(test$prediction))
glm.pred[(preds)> 0.6864949]="paid"

table(glm.pred,test$loans.status)
(14350+215) /length(preds)


