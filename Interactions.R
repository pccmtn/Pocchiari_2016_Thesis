## MODEL C: FINAL + INTRODUCE INTERACTIONS BETWEEN SECTOR AND SOCIAL PERFORMANCE BADGES

copy <- copyDates
names(copy)

copy$SPB <- rowSums(copy[, 24:30])

fit_inter <- glm(loans.status ~  factor(loans.sector) + loans.loan_amount + loans.lender_count +
                 loans.bonus_credit_eligibility + loans.terms.repayment_interval +
                 loans.terms.repayment_term + loans.terms.loss_liability.nonpayment +
                 loans.journal_totals.entries +
                 partners.status +
                 partners.rating +
                 partners.delinquency_rate + partners.default_rate + partners.total_amount_raised +
                 partners.loans_posted + 
                 partners.charges_fees_and_interest +
                 partners.average_loan_size_percent_per_capita_income +
                 partners.loans_at_risk_rate + partners.portfolio_yield +
                 partners.profitability + SPB +
                 factor(loans.sector)*SPB +
                 partners.profitability*SPB +
                 score*SPB,  
               family = binomial(link = "logit"), 
               data = copy)

## dummy_closed and dummy_transportation removed to be used as a baseline

interactions <- (summary(fit_inter))
interactions <- as.data.frame(interactions$coefficients)
xlsx::write.xlsx(interactions, "dataframe_interactions.xlsx")

with(fit_inter, null.deviance - deviance)
with(fit_inter, df.null - df.residual)
with(fit_inter, pchisq(null.deviance - deviance, df.null - df.residual, lower.tail = FALSE))


## Cross-validation with a for loop
set.seed(100)
## Set K and get permutation of the rows
K <- 10
n <- nrow(copy)
perm <- sample.int(n)
## Vector indicating the folds (check that length is correct)
folds <- rep(seq_len(K), each = ceiling(n / K))[perm]
length(folds) == n
## Vector to store test predictions in
preds <- vector("numeric", length = n)
for (i in seq_len(K)) { #loop for all folds
  trainInd <- folds != i #shows which observation is in my training set
  testInd <- !trainInd
  fit_inter <- glm(loans.status ~  factor(loans.sector) + loans.loan_amount + loans.lender_count +
                     loans.bonus_credit_eligibility + loans.terms.repayment_interval +
                     loans.terms.repayment_term + loans.terms.loss_liability.nonpayment +
                     loans.journal_totals.entries +
                     partners.status +
                     partners.rating +
                     partners.delinquency_rate + partners.default_rate + partners.total_amount_raised +
                     partners.loans_posted + 
                     partners.charges_fees_and_interest +
                     partners.average_loan_size_percent_per_capita_income +
                     partners.loans_at_risk_rate + partners.portfolio_yield +
                     partners.profitability + SPB +
                     factor(loans.sector)*SPB +
                     partners.profitability*SPB +
                     score*SPB,  
                   family = binomial(link = "logit"), 
                   data = copy, subset = trainInd)
  
  preds[!trainInd] <- predict(fit_inter, newdata = copy[!trainInd, ],
                              type = "response")
}

summary(fit_inter)

train <- copy[trainInd, ]
dim(train)
test <- copy[testInd, ]
dim(test)
test$prediction <-  preds[!trainInd]

set.seed(100)
#Model C

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
CV_p0_interactions <- ggplot(data = df_melt, 
                             aes(x = threshold,y = value, group = variable, colour = variable)) + 
  geom_path(size = 0.75) + xlim(0,1)

glm.pred=rep("defaulted",length(test$prediction))
glm.pred[(preds[!trainInd]) >0.56552525]="paid"

table(glm.pred,test$loans.status)
(1435+17) /length(preds[!trainInd])
mean(glm.pred == test$loans.status)


## prediction full dataset

preds_inter <- predict(fit_inter, newdata = copy, type = "response")

#Model C

p0_seq <- seq(from = 0.001, to = 0.999, length = 100)
overall_error <- fpos <- fneg <- tpos <- vector("double", 
                                                length = length(p0_seq))
for (i in seq_along(p0_seq)) {
  preds_fact_inter <- cut(preds_inter, breaks = c(0, p0_seq[i], 1), 
                    labels = c("Paid", "Defaulted"))
  confmat <- table(copy$loans.status, preds_fact_inter)
  overall_error[i] <-  1 - sum(diag(confmat)) / nrow(copy)
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
CV_p0_interactions <- ggplot(data = df_melt, 
                             aes(x = threshold,y = value, group = variable, colour = variable)) + 
  geom_path(size = 0.75) + xlim(0,1)

glm.pred=rep("defaulted",length(copy$loans.status))
glm.pred[(preds_inter) >0.5453636]="paid"

table(glm.pred,copy$loans.status)
(14401+177) /length(preds_inter)
