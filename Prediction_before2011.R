## Model A: Before SPB

droppidroppi <- c("Antipoverty", "Vulnerable_Group", "Client_Voice", "Family_Community",
                  "Enterpreneurial_Support", "Facilitation_Savings",
                  "Innovation")
oldies <- oldies[, !(names(oldies) %in% droppidroppi)]

summary(copyDates$partners.charges_fees_and_interest)

fit_oldies <-glm(loans.status ~ loans.sector + loans.loan_amount + loans.lender_count +
                   loans.bonus_credit_eligibility + loans.terms.repayment_interval +
                   loans.terms.repayment_term + loans.terms.loss_liability.nonpayment +
                   loans.journal_totals.entries + partners.status + partners.rating +
                   partners.delinquency_rate + partners.default_rate + partners.total_amount_raised +
                   partners.loans_posted + partners.charges_fees_and_interest + 
                   partners.average_loan_size_percent_per_capita_income +
                   partners.loans_at_risk_rate + partners.portfolio_yield +
                   partners.profitability + score,
                 family = binomial(link = "logit"), data = oldies)
  
head(fit_oldies$y)
head(oldies$loans.status)
sumi <- summary(fit_oldies)
sumi <- as.data.frame(sumi$coefficients)

xlsx::write.xlsx(sumi, "dataframe.oldies.xlsx")

with(fit_oldies, null.deviance - deviance)
with(fit_oldies, df.null - df.residual)
with(fit_oldies, pchisq(null.deviance - deviance, df.null - df.residual, lower.tail = FALSE))

## Cross Validation

## Cross-validation with a for loop
set.seed(100)
## Set K and get permutation of the rows
K <- 10
n <- nrow(oldies)
perm <- sample.int(n)
## Vector indicating the folds (check that length is correct)
folds <- rep(seq_len(K), each = ceiling(n / K))[perm]
length(folds) == n
## Vector to store test predictions in
preds <- vector("numeric", length = n)
for (i in seq_len(K)) { #loop for all folds
  trainInd <- folds != i #shows which observation is in my training set
  testInd <- !trainInd
  fit_oldies <- glm(loans.status ~ loans.sector + loans.loan_amount + loans.lender_count +
                      loans.bonus_credit_eligibility + loans.terms.repayment_interval +
                      loans.terms.repayment_term + loans.terms.loss_liability.nonpayment +
                      loans.journal_totals.entries + partners.status + partners.rating +
                      partners.delinquency_rate + partners.default_rate + partners.total_amount_raised +
                      partners.loans_posted + partners.charges_fees_and_interest + 
                      partners.average_loan_size_percent_per_capita_income +
                      partners.loans_at_risk_rate + partners.portfolio_yield +
                      partners.profitability + score, 
                    family = binomial(link = "logit"), 
                    data = oldies, subset = trainInd)
  
  preds[!trainInd] <- predict(fit_oldies, newdata = oldies[!trainInd, ],
                              type = "response")
}

summary(fit_oldies)
plot(fit_oldies)

train <- oldies[trainInd, ]
nrow(train)
nrow(test)
test <- oldies[testInd, ]
test$prediction <-  preds[!trainInd]

set.seed(100)
#Model 1

p0_seq <- seq(from = 0.001, to = 0.999, length = 100)
overall_error <- fpos <- fneg <- tpos <- vector("double", 
                                                length = length(p0_seq))
for (i in seq_along(p0_seq)) {
  preds_fact <- cut(preds[testInd], breaks = c(0, p0_seq[i], 1), 
                    labels = c("Defaulted", "Paid"))
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
dev.off()
CV_p0_model_A <- ggplot(data = df_melt, aes(x = threshold, y = value, group = variable, colour = variable)) + 
  geom_path(size = 0.75) + xlim(0,1) + labs(title = "Optimal Probability Threshold Model A: Results of Cross-Validation")

# prediction with K-Fold

glm.pred=rep("defaulted",length(test$prediction))
glm.pred[(preds[!trainInd]) >.5]="paid"

table(glm.pred,test$loans.status)
mean(glm.pred == test$loans.status) 
## logistic regression correctly predicted 97.6 % of the time

# prediction with K-Fold and optimal p threshold

glm.pred=rep("defaulted",length(test$prediction))
glm.pred[(preds[!trainInd]) >0.5151212]="paid"

table(glm.pred,test$loans.status)
(1383+15) /length(preds[!trainInd])
mean(glm.pred == test$loans.status)

# prediction on full dataset

preds_before <- predict(fit_oldies, newdata = oldies,
                            type = "response")

# optimal threshold

p0_seq <- seq(from = 0.001, to = 0.999, length = 100)
overall_error <- fpos <- fneg <- tpos <- vector("double", 
                                                length = length(p0_seq))
for (i in seq_along(p0_seq)) {
  preds_fact_before <- cut(preds, breaks = c(0, p0_seq[i], 1), 
                    labels = c("Defaulted", "Paid"))
  confmat <- table(oldies$loans.status, preds_fact_before)
  overall_error[i] <-  1 - sum(diag(confmat)) / nrow(oldies)
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
dev.off()
CV_p0_model_A <- ggplot(data = df_melt, aes(x = threshold, y = value, group = variable, colour = variable)) + 
  geom_path(size = 0.75) + xlim(0,1) + labs(title = "Optimal Probability Threshold Model A: Results of Cross-Validation")

# prediction with K-Fold

glm.pred=rep("defaulted",length(oldies$loans.status))
glm.pred[(preds_before) >0.6360909]="paid"

table(glm.pred,oldies$loans.status)
(13800+190) /length(preds_before)
