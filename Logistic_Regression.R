## Logistic Regression: Model 0 part 1

## Load an inspect data
#install.packages("ISLR")
library("glmnet")
head(copyDates)
dim(copyDates)
summary(copyDates$loans.sector)

## Some plots
library("ggplot2")
#ggplot(copyDates, aes(x = loans.loan_amount, y = partners.loans_posted, colour = loans.status)) + 
 # geom_point(alpha = 0.5, size = 2) +
  #scale_x_log10() +
  #scale_y_log10()

ggplot(copyDates, aes(x = loans.loan_amount, group = loans.status, fill = loans.status)) + 
  geom_density(alpha = 0.5) +
  scale_x_log10() +
  labs(x= "Loan Amount (Log Scale)", y = "Density", title = "Loan Amount (Log Scale) and Loans Success") +
  scale_fill_discrete(name = "Loan Status", guide = "legend", labels = c("Defaulted", "Paid"))

ggplot(copyDates, aes(x = partners.rating, group = loans.status, fill = loans.status)) + 
  geom_density(alpha = 0.5) +
  labs(x = "Partners' Rating", y = "Density", title = "Loan Success and Partners' Rating") +
  scale_fill_discrete(name = "Loan Status", guide = "legend", labels = c("Defaulted", "Paid"))

unique(copyDates$partners.rating)

graphsorted <- copyDates
graphsorted$loans.sector <- factor(graphsorted$loans.sector, levels = c("Food", "Retail", "Agriculture",
                                                                        "Services", "Clothing",
                                                                        "Transportation", "Housing",
                                                                        "Arts", "Construction", 
                                                                        "Manufacturing", "Personal Use",
                                                                        "Education", "Health",
                                                                        "Wholesale", "Entertainment"))
ggplot(graphsorted, aes(x = loans.sector, group = loans.status, fill = loans.status)) + 
  geom_bar(alpha = 0.5, position = "dodge") +
  theme(axis.text.x = element_text(angle = 90, hjust = 1, size = 10.5, face = "bold")) +
  labs(x= "Sector", y = "Frequency", title = "Sector Popularity and Loans Success") +
  scale_fill_discrete(name = "Loan Status", guide = "legend",labels = c("Defaulted", "Paid"))

ggplot(copyDates, aes(x = score, group = loans.status, fill = loans.status)) + 
  geom_density(alpha = 0.5) +
  labs(x= "Score Sentiment", y = "Density", title = "Sentiment Scores and Loans Success") +
  scale_x_continuous(limits = c(-5, 10), breaks = c(-5:10)) +
  scale_fill_discrete(name = "Loan Status", guide = "legend", labels = c("Defaulted", "Paid"))

ggplot(tmp, aes(x = Antipoverty, group = loans.status, fill = loans.status)) + 
  geom_bar(alpha = 0.5, position = "dodge", width = 0.5) +
  labs(x= "Presence of Antipoverty Badge", y = "Frequency", title = "Antipoverty and Loans Success") +
  scale_x_discrete(limits = c(FALSE, TRUE)) +
  scale_fill_discrete(name = "Loan Status", guide = "legend", labels = c("Defaulted", "Paid"))
table(copyDates$Antipoverty, copyDates$loans.status)

ggplot(tmp, aes(x = Facilitation_Savings, group = loans.status, fill = loans.status)) + 
  geom_bar(alpha = 0.5, position = "dodge", width = 0.5) +
  labs(x= "Presence of Facilitation_Savings Badge", y = "Frequency", title = "Facilitation_Savings and Loans Success") +
  scale_x_discrete(limits = c(FALSE, TRUE)) +
  scale_fill_discrete(name = "Loan Status", guide = "legend")
table(copyDates$Facilitation_Savings, copyDates$loans.status)
  
ggplot(tmp, aes(x = Enterpreneurial_Support, group = loans.status, fill = loans.status)) + 
  geom_bar(alpha = 0.5, position = "dodge", width = 0.5) +
  labs(x= "Presence of Enterpreneurial_Support Badge", y = "Frequency", title = "Enterpreneurial_Support and Loans Success") +
  scale_x_discrete(limits = c(FALSE, TRUE)) +
  scale_fill_discrete(name = "Loan Status", guide = "legend")
table(copyDates$Enterpreneurial_Support, copyDates$loans.status)
  
ggplot(tmp, aes(x = Innovation, group = loans.status, fill = loans.status)) + 
  geom_bar(alpha = 0.5, position = "dodge", width = 0.5) +
  labs(x= "Presence of Innovation Badge", y = "Frequency", title = "Innovation and Loans Success") +
  scale_x_discrete(limits = c(FALSE, TRUE)) +
  scale_fill_discrete(name = "Loan Status", guide = "legend")
table(copyDates$Innovation, copyDates$loans.status)
  
ggplot(tmp, aes(x = Client_Voice, group = loans.status, fill = loans.status)) + 
  geom_bar(alpha = 0.5, position = "dodge", width = 0.5) +
  labs(x= "Presence of Client_Voice Badge", y = "Frequency", title = "Client_Voice and Loans Success") +
  scale_x_discrete(limits = c(FALSE, TRUE)) +
  scale_fill_discrete(name = "Loan Status", guide = "legend")
table(copyDates$Client_Voice, copyDates$loans.status)
  
ggplot(tmp, aes(x = Family_Community, group = loans.status, fill = loans.status)) + 
  geom_bar(alpha = 0.5, position = "dodge", width = 0.5) +
  labs(x= "Presence of Family_Community Badge", y = "Frequency", title = "Family_Community and Loans Success") +
  scale_x_discrete(limits = c(FALSE, TRUE)) +
  scale_fill_discrete(name = "Loan Status", guide = "legend")
table(copyDates$Family_Community, copyDates$loans.status)
  
Fggplot(tmp, aes(x = Vulnerable_Group, group = loans.status, fill = loans.status)) + 
  geom_bar(alpha = 0.5, position = "dodge", width = 0.5) +
  labs(x= "Presence of Vulnerable_Group Badge", y = "Frequency", title = "Vulnerable_Group and Loans Success") +
  scale_x_discrete(limits = c(FALSE, TRUE)) +
  scale_fill_discrete(name = "Loan Status", guide = "legend")
table(copyDates$Vulnerable_Group, copyDates$loans.status)
  
## Relation between default and student
with(copyDates, prop.table(table(loans.status, Antipoverty), margin = 2))
with(copyDates, prop.table(table(loans.status, Facilitation_Savings), margin = 1))
with(copyDates, prop.table(table(loans.status, Client_Voice)))
with(copyDates, prop.table(table(loans.status, Enterpreneurial_Support)))
with(copyDates, prop.table(table(loans.status, Vulnerable_Group)))
with(copyDates, prop.table(table(loans.status, Innovation))) 
with(copyDates, prop.table(table(loans.status, Family_Community)))

## LOGIT FIT

fit_all <- glm(loans.status ~ loans.sector + loans.loan_amount + loans.lender_count +
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
               data = copyDates)


summary(fit_all)

with(fit_all, null.deviance - deviance)
with(fit_all, df.null - df.residual)
with(fit_all, pchisq(null.deviance - deviance, df.null - df.residual, lower.tail = FALSE))
