## DATASET WITH BINARY LOANS.STATUS

copyloans <- withoutNA
copypaid<-copyloans[(copyloans$loans.status=="paid" | copyloans$loans.status == "defaulted"),]
copypaid$loans.status <- factor(copypaid$loans.status)

copiawithDates <- c("loans.description.texts.en", "loans.location.geo.pairs", "borrower_name", "dummy_defaulted",
                    "partners.start_date", "loans.name")


copyDates <- copypaid[, !(names(copypaid) %in% copiawithDates)]

# check if there are any NAs

propmiss(copyDates)

#creation of dummy variable for lasso regression

for(level in unique(copyDates$loans.status)){
  copyDates[paste("dummy", level, sep = "_")] <- ifelse(copyDates$loans.status == "paid", 1, 0)
}

## standardization of score sentiment and graphs

normalize <- function(x) {
  num <- x - min(x)
  denom <- max(x) - min(x)
  return (num/denom)
}

tmp <- copyDates
tmp$score <- scale(tmp$score, center = T, scale = T)
a <- tmp$score
b <- copyDates$score
A <- data.frame(a, b)

summary(A$a)

## SCORES AND AMOUNT

scores <- ggplot(tmp, aes(x=score)) +
  geom_histogram(aes(y=..count..),colour = "white") +
  labs(x = "Standardized Sentiment Score | Neutral Score = -0.729", y = "Number of texts", title = "Frequency of Sentiment Scores")

success_scores <- ggplot(tmp, aes(x=score, group = loans.status, fill = loans.status)) +
  geom_density(alpha = 0.5) +
  labs(x = "Standardized Sentiment Score | Neutral Score = -0.729", y = "Density of texts", title = "Density of Sentiment Scores")

textscores <- ggplot(tmp, aes(y=loans.loan_amount, x=score)) +
  geom_point(size=1) +
  geom_smooth(aes(group = 1), method = "lm", se = TRUE) +
  labs(title = "Standardized Sentiment Scores and Loan Amounts", y = "Loan Amount", x = "Standardized Sentiment Score")

## SCORES AND BADGES

APscore <- ggplot(tmp, aes(x=score)) +
  geom_bar(aes(y=..count..), width =0.5) +
  facet_wrap(~Antipoverty, scales = "free_y", nrow = 2) +
  labs(title = "Standardized Sentiment Scores and Antipoverty Badge", y = "Frequency", x = "Standardized Sentiment Score")

FSscore <- ggplot(tmp, aes(x=score)) +
  geom_bar(aes(y=..count..), width =0.5) +
  facet_wrap(~Facilitation_Savings, scales = "free_y", nrow = 2) +
  labs(title = "Standardized Sentiment Scores and Facilitation \n of Savings Badge", y = "Frequency", x = "Standardized Sentiment Score")

CVscore <- ggplot(tmp, aes(x=score)) +
  geom_bar(aes(y=..count..), width =0.5) +
  facet_wrap(~Client_Voice, scales = "free_y", nrow = 2) +
  labs(title = "Standardized Sentiment Scores and Client Voice Badge", y = "Frequency", x = "Standardized Sentiment Score")

ESscore <- ggplot(tmp, aes(x=score)) +
  geom_bar(aes(y=..count..), width =0.5) +
  facet_wrap(~Enterpreneurial_Support, scales = "free_y", nrow = 2) +
  labs(title = "Standardized Sentiment Scores and Enterpreneurial \n Support Badge", y = "Frequency", x = "Standardized Sentiment Score")

FCscore <- ggplot(tmp, aes(x=score)) +
  geom_bar(aes(y=..count..), width =0.5) +
  facet_wrap(~Family_Community, scales = "free_y", nrow = 2) +
  labs(title = "Standardized Sentiment Scores and \n Family&Community Badge", y = "Frequency", x = "Standardized Sentiment Score")

INNscore <- ggplot(tmp, aes(x=score)) +
  geom_bar(aes(y=..count..), width =0.5) +
  facet_wrap(~Innovation, scales = "free_y", nrow = 2)+
  labs(title = "Standardized Sentiment Scores and Innovation Badge", y = "Frequency", x = "Standardized Sentiment Score")

VGscore <- ggplot(tmp, aes(x=score)) +
  geom_bar(aes(y=..count..), width =0.5) +
  facet_wrap(~Vulnerable_Group, scales = "free_y", nrow = 2) +
  labs(title = "Standardized Sentiment Scores and Vulnerable Group Badge", y = "Frequency", x = "Standardized Sentiment Score")

## SENTIMENT SCORE, BADGES AND SUCCESS

ggplot(tmp, aes(x = score, grop = loans.status, fill = loans.status))+
  geom_density(alpha = 0.5) +
  facet_wrap(~Antipoverty, scales = "free_y", nrow = 2) + 
  labs(title = "Standardized Sentiment Scores, \n Antipoverty Badge and Loan Success", y = "Frequency", x = "Standardized Sentiment Score") +
  scale_fill_discrete(name = "Loan Status", guide = "legend", labels = c("Defaulted", "Paid"))

ggplot(tmp, aes(x = score, grop = loans.status, fill = loans.status))+
  geom_density(alpha = 0.5) +
  facet_wrap(~Vulnerable_Group, scales = "free_y", nrow = 2) + 
  labs(title = "Standardized Sentiment Scores, \n Vulnerable Group Badge and Loan Success", y = "Frequency", x = "Standardized Sentiment Score") +
  scale_fill_discrete(name = "Loan Status", guide = "legend", labels = c("Defaulted", "Paid"))

ggplot(tmp, aes(x = score, grop = loans.status, fill = loans.status))+
  geom_density(alpha = 0.5) +
  facet_wrap(~Enterpreneurial_Support, scales = "free_y", nrow = 2) + 
  labs(title = "Standardized Sentiment Scores, \n Enterpreneurial Support Badge and Loan Success", y = "Frequency", x = "Standardized Sentiment Score") +
  scale_fill_discrete(name = "Loan Status", guide = "legend", labels = c("Defaulted", "Paid"))

ggplot(tmp, aes(x = score, grop = loans.status, fill = loans.status))+
  geom_density(alpha = 0.5) +
  facet_wrap(~Facilitation_Savings, scales = "free_y", nrow = 2) + 
  labs(title = "Standardized Sentiment Scores, \n Facilitation of Savings Badge and Loan Success", y = "Frequency", x = "Standardized Sentiment Score") +
  scale_fill_discrete(name = "Loan Status", guide = "legend", labels = c("Defaulted", "Paid"))

ggplot(tmp, aes(x = score, grop = loans.status, fill = loans.status))+
  geom_density(alpha = 0.5) +
  facet_wrap(~Innovation, scales = "free_y", nrow = 2) + 
  labs(title = "Standardized Sentiment Scores, \n Innovation Badge and Loan Success", y = "Frequency", x = "Standardized Sentiment Score") +
  scale_fill_discrete(name = "Loan Status", guide = "legend", labels = c("Defaulted", "Paid"))

ggplot(tmp, aes(x = score, grop = loans.status, fill = loans.status))+
  geom_density(alpha = 0.5) +
  facet_wrap(~Client_Voice, scales = "free_y", nrow = 2) + 
  labs(title = "Standardized Sentiment Scores, \n Client Voice Badge and Loan Success", y = "Frequency", x = "Standardized Sentiment Score") +
  scale_fill_discrete(name = "Loan Status", guide = "legend", labels = c("Defaulted", "Paid"))

ggplot(tmp, aes(x = score, grop = loans.status, fill = loans.status))+
  geom_density(alpha = 0.5) +
  facet_wrap(~Family_Community, scales = "free_y", nrow = 2) + 
  labs(title = "Standardized Sentiment Scores, \n Family and Community Badge and Loan Success", y = "Frequency", x = "Standardized Sentiment Score") +
  scale_fill_discrete(name = "Loan Status", guide = "legend", labels = c("Defaulted", "Paid"))


# Some descriptives

summary(copyDates$loans.loan_amount)
mean(copyDates$loans.loan_amount)
sd(copyDates$loans.loan_amount)
median(copyDates$loans.loan_amount)

psych::describe(copyDates$loans.posted_date)
median(copyDates$loans.posted_date)

mean(copyDates$loans.terms.repayment_term)
median(copyDates$loans.terms.repayment_term)
summary(copyDates$loans.terms.repayment_term)
sd(copyDates$loans.terms.repayment_term)

summary(copyDates$loans.lender_count)
mean(copyDates$loans.lender_count)
sd(copyDates$loans.lender_count)
median(copyDates$loans.lender_count)

mean(copyDates$partners.default_rate)
sd(copyDates$partners.default_rate)
summary(copyDates$partners.default_rate)
median(copyDates$partners.default_rate)

summary(copyDates$loans.terms.repayment_interval)
median(copyDates$loans.terms.repayment_interval)

Mode(copyDates$loans.location.country)
Mode(copyDates$loans.sector)

nrow(copyDates)