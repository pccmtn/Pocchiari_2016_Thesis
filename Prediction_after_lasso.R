# Model B: After 2011 with lasso

xfactorsafter <- model.matrix(loans.status ~ loans.sector +
                           loans.bonus_credit_eligibility + loans.terms.repayment_interval
                         + loans.terms.loss_liability.nonpayment +
                           + partners.status +
                           partners.charges_fees_and_interest + 
                           Antipoverty +
                           Vulnerable_Group + Client_Voice +
                           Family_Community + Enterpreneurial_Support +
                           Facilitation_Savings + Innovation, data = recent)[,-1]

xafter <- as.matrix(data.frame(recent$loans.loan_amount, 
                               recent$loans.lender_count,
                               recent$loans.terms.repayment_term,
                               recent$loans.journal_totals.entries,
                               recent$partners.rating,recent$partners.delinquency_rate, 
                               recent$partners.default_rate,recent$partners.total_amount_raised,
                               recent$partners.loans_posted,recent$partners.average_loan_size_percent_per_capita_income,
                               recent$partners.loans_at_risk_rate, 
                               recent$partners.portfolio_yield, 
                               recent$partners.profitability, recent$score, xfactorsafter))
dim(xafter)
library(glmnet)
#note alpha =1 for lasso only and can blend with ridge penalty down to alpha=0 ridge only
glmmod_after<-glmnet(x=xafter[train,],y=(as.factor(recent$loans.status)[train]),alpha=1,family='binomial')
var_sel_model_B <- plot(glmmod_after)

# plot
var_sel_modelB_2<- plot(glmmod_after, xvar="lambda")


# Cross Validation


set.seed(42)
train=sample(1:nrow(xafter), nrow(xafter)/2)
test=(-train)
#grid=10^seq(10,-5,length=100)
yafter <- recent$dummy_paid# set RNG seed for reproducibility 
train.xafter <- xafter[train,]
train.yafter <- yafter[train]
test.xafter <- xafter[test,]
test.yafter <- yafter[test]

## Call cv.glmnet specifying the foldid's:

cv.glmnet.fit_after <- cv.glmnet(x = train.xafter, 
                           y = train.yafter, 
                           nfolds = 10,
                           type.measure = "mse", alpha = 1)
MSE_Model_B_without_value_grid <- plot(cv.glmnet.fit_after)

## Choose the lambda with the minimum CV-estimated loss:
cv.glmnet.lambda.min.pred_after <- predict(cv.glmnet.fit_after,
                                     s = cv.glmnet.fit_after$lambda.min, #$
                                     newx = test.xafter)

## Using the 1-standard-error lambda selection rule:
cv.glmnet.lambda.1se.pred <- predict(cv.glmnet.fit,
                                     s = cv.glmnet.fit$lambda.1se, #$
                                     newx = test.x)


mean((cv.glmnet.lambda.min.pred_after-test.yafter)^2)
mean((mean(yafter[train])-test.yafter)^2) #mse of null model

best_lambda_after <- cv.glmnet.fit_after$lambda.min
grid_after = cv.glmnet.fit_after$lambda

out_after=glmnet(xafter,y=as.factor(recent$loans.status),alpha=1,family='binomial')
lasso.coef_after=predict(out_after,type="coefficients",s=best_lambda_after)[1:45,]
xlsx::write.xlsx(lasso.coef_after, "lassos_after.xlsx")
length(lasso.coef_after[lasso.coef_after!=0])

# prediction on full dataset

preds_after <- predict(out_after,type="response",s=best_lambda_after, newx = xafter)

# optimal threshold

p0_seq <- seq(from = 0.001, to = 0.999, length = 100)
overall_error <- fpos <- fneg <- tpos <- vector("double", 
                                                length = length(p0_seq))
for (i in seq_along(p0_seq)) {
  preds_fact_after <- cut(preds_after, breaks = c(0, p0_seq[i], 1), 
                           labels = c("Defaulted", "Paid"))
  confmat <- table(recent$loans.status, preds_fact_after)
  overall_error[i] <-  1 - sum(diag(confmat)) / nrow(recent)
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
CV_p0_model_B <- ggplot(data = df_melt, aes(x = threshold, y = value, group = variable, colour = variable)) + 
  geom_path(size = 0.75) + xlim(0,1) + labs(title = "Optimal Probability Threshold Model A: Results of Cross-Validation")

# prediction with K-Fold

glm.pred=rep("defaulted",length(recent$loans.status))
glm.pred[(preds_after) >0.6965758]="paid"

table(glm.pred,recent$loans.status)
(565+5) /length(preds_after)
