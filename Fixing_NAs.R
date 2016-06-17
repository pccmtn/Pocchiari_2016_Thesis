## Fixing missing values

final_sentiment <- final_sentiment[ , !(names(final_sentiment) %in% drops1)]

# NAs initial

propmiss <- propmiss <- function(dataframe) {
  m <- sapply(dataframe, function(x) {
    data.frame(
      nmiss=sum(is.na(x)), 
      n=length(x), 
      propmiss=sum(is.na(x))/length(x)
    )
  })
  d <- data.frame(t(m))
  d <- sapply(d, unlist)
  d <- as.data.frame(d)
  d$variable <- row.names(d)
  row.names(d) <- NULL
  d <- cbind(d[ncol(d)],d[-ncol(d)])
  return(d[order(d$propmiss), ])
}
missing <- propmiss(final_sentiment)

# Replace Missing Values

safe <- final_sentiment

# Replace with means 

sapply(safe, class)

library("dplyr")
impute.mean <- function(x) replace(x, is.na(x), mean(x, na.rm = TRUE))
safe_replaced <- safe %>%
  mutate(
    partners.delinquency_rate = impute.mean(partners.delinquency_rate),
    partners.default_rate = impute.mean(partners.default_rate),
    partners.rating = impute.mean(partners.rating),
    partners.portfolio_yield = impute.mean(partners.portfolio_yield),
    partners.profitability = impute.mean(partners.profitability),
    loans.terms.repayment_term = impute.mean(loans.terms.repayment_term)
    
  )

summary(is.na(safe_replaced$loans.terms.repayment_term))

#Replace with Mode

safe_replaced$loans.terms.repayment_interval[is.na(safe_replaced$loans.terms.repayment_interval)] = "Monthly"

#Nas final

withoutNA <- na.omit(safe_replaced)
missing_check2 <- propmiss(safe_replaced)

