## Bagging

set.seed(1)
kiva_bag <- randomForest(loans.status ~ loans.sector + loans.loan_amount + loans.lender_count +
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
                           Facilitation_Savings + Innovation + score, data = copyDates, mtry = 27, 
                         ntree = 1000, do.trace = F)

(14416+324)/(14416+324+47+90) #0.9907

## Random Forests
kiva_rf_5 <- randomForest(loans.status ~ loans.sector + loans.loan_amount + loans.lender_count +
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
                            Facilitation_Savings + Innovation + score, data = copyDates, ntree = 1000,
                          importance = TRUE)

getTree(kiva_rf_5, k = 500, labelVar = T)

(14443+302)/(14443+302+20+112) #0.9911

kiva_rf_9 <- randomForest(loans.status ~ loans.sector + loans.loan_amount + loans.lender_count +
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
                             Facilitation_Savings + Innovation + score, data = copyDates, ntree = 1000,
                           importance = TRUE, mtry = 9)
(14436+318)/(14436+318+27+96) #0.9917
(27+96)/14877

## Plot OOB error estimates
df <- data.frame(rf_5 = kiva_rf_5$err.rate[, "OOB"], 
                 rf_9 = kiva_rf_9$err.rate[, "OOB"],
                 trees = 1:1000)
head(df)
min(kiva_rf_5$err.rate[, "OOB"])

df[df$rf_5 == "0.008402232", ]
df
#install.packages("reshape")
library("reshape")
df_melt <- melt(df, id.vars = "trees")
ggplot(df_melt, aes(x = trees, y = value, group = variable, colour = variable)) +
  geom_line() +
  labs(title = "OOB Error Estimate", x = "Trees", y = "Error")+
  ylim(0.008, 0.009)+
  theme(axis.text.x = element_text(size = 12))

## Plot permutation variable importance using ggplot
imp <- data.frame(Importance = kiva_rf_9$importance[, "MeanDecreaseAccuracy"],
                  Variable = rownames(kiva_rf_9$importance))
xlsx::write.xlsx(imp, "imp.xlsx")
## Order from large to small
imp$Variable <- with(imp, factor(Variable, 
                                 levels = Variable[order(Importance, decreasing = TRUE)]))
ggplot(imp, aes(x = Variable, y = Importance)) + geom_bar(stat = "identity", fill = "#33cccc", alpha = 0.7) +
  theme(axis.text.x = element_text(angle = 60, hjust = 1, size = 12))

## Alternative variable importance plot
varImpPlot(kiva_rf_9, type = 1)

## Error rates: View
(kiva_rf_9$err.rate[, "OOB"])

## Plot error rates (base graphics)
plot(kiva_rf_9, lwd = 2)
legend("topright", col = 1:3, lty = 1:3, 
       legend = c("OOB", "paid", "defaulted"),
       lwd = 2)