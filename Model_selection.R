#LASSO REGRESSION WITHOUD GRID OF LAMBDAS

set.seed(42)

xfactors <- model.matrix(loans.status ~ loans.sector +
                           loans.bonus_credit_eligibility + loans.terms.repayment_interval
                         + loans.terms.loss_liability.nonpayment +
                           + partners.status +
                           partners.charges_fees_and_interest + 
                           Antipoverty +
                           Vulnerable_Group + Client_Voice +
                           Family_Community + Enterpreneurial_Support +
                           Facilitation_Savings + Innovation, data = copyDates)[,-1]
class(copyDates$loans.terms.repayment_interval)
x <- as.matrix(data.frame(copyDates$loans.loan_amount, copyDates$loans.lender_count,
                          copyDates$loans.terms.repayment_term,
                          copyDates$loans.journal_totals.entries,
                          copyDates$partners.rating, copyDates$partners.delinquency_rate, 
                          copyDates$partners.default_rate, copyDates$partners.total_amount_raised,
                          copyDates$partners.loans_posted, copyDates$partners.average_loan_size_percent_per_capita_income,
                          copyDates$partners.loans_at_risk_rate, 
                          copyDates$partners.portfolio_yield, 
                          copyDates$partners.profitability, copyDates$score, xfactors))
train=sample(1:nrow(x), nrow(x)/2)
test=(-train)
grid=10^seq(10,-5,length=100)
y <- copyDates$dummy_paid
y.test=y[test]
dim(x)
library(glmnet)
#note alpha =1 for lasso only and can blend with ridge penalty down to alpha=0 ridge only
glmmod<-glmnet(x[train,],y=as.factor(copyDates$loans.status)[train],alpha=1,family='binomial')
plot(glmmod)

# This function may help with plotting variable labels. But there are too many variables in this regression.
#lbs_fun <- function(glmmod, ...) {
#  L <- length(glmmod$lambda)
#  x <- log(glmmod$lambda[L])
#  y <- glmmod$beta[, L]
#  labs <- names(y)
#  text(x, y, labels=labs, cex = 0.5, adj = (-1 -0.1))
#}
# plot
# also:
# label
#lbs_fun(glmmod)

plot(glmmod, xvar="lambda")


#cross validation

cv.glmmod <- cv.glmnet(x[train,],y=y[train],alpha=1)

MSE_Model_1_without_value_grid <- plot(cv.glmmod)

best_lambda <- cv.glmmod$lambda.min
best_lambda
lasso.pred=predict(glmmod,s=best_lambda,newx=x[test,])
mean((lasso.pred-y.test)^2) #mse with the lasso
mean((mean(y[train])-y.test)^2) #mse of null model


#plot variable coefficients vs. shrinkage parameter lambda.
plot(glmmod,xvar="lambda")
best_lambda
glmmod #8.698234e-05

out=glmnet(x,y=as.factor(copyDates$loans.status),alpha=1,family='binomial')
lasso.coef=predict(out,type="coefficients",s=best_lambda)[1:44,]
xlsx::write.xlsx(lasso.coef, "lassosgrid.xlsx")
lasso.coef[lasso.coef!=0]


# CONFUSION MATRIX WITHOUT GRID
library(glmnet)
out_lasso =glmnet(x,y=as.factor(copyDates$loans.status),alpha=1,family='binomial')
lasso_pred =predict(out_lasso,type="response",s=best_lambda, newx = x)
length(lasso_pred)

set.seed(100)
#Model 1
complete_df <- as.data.frame(x)
complete_df$loans.status <- copyDates$loans.status

p0_seq <- seq(from = 0.001, to = 0.999, length = 100)
overall_error <- fpos <- fneg <- tpos <- vector("double", 
                                                length = length(p0_seq))
for (i in seq_along(p0_seq)) {
  preds_fact_lasso <- cut(lasso_pred, breaks = c(0, p0_seq[i], 1), 
                    labels = c("Paid", "Defaulted"))
  confmat <- table(complete_df$loans.status, preds_fact_lasso)
  overall_error[i] <-  1 - sum(diag(confmat)) / nrow(complete_df)
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
CV_p0_Model1 <- ggplot(data = df_melt, aes(x = threshold, y = value, group = variable, colour = variable)) + 
  geom_path(size = 0.75) + xlim(0,1) +
  labs(title = "Optimal Probability Threshold Model 1: Results of Cross-Validation")

# prediction with K-Fold

glm.pred_lasso=rep("defaulted",length(complete_df$loans.status))
glm.pred_lasso[(lasso_pred)> 0.6864949]="paid"

table(glm.pred_lasso,complete_df$loans.status)
(14366+209) /length(lasso_pred)
