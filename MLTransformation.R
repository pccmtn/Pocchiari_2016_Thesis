# TRANSFORMING VARIABLES FOR PROPER MEASUREMENT LEVELS

#str(unite_1953[,1:12])

#transform

unite_1953$loans.status <- as.factor(unite_1953$loans.status)
unite_1953$loans.sector <- as.factor(unite_1953$loans.sector)

#str(unite_1953[,12:15])
unite_1953$loans.terms.repayment_interval <- as.factor(unite_1953$loans.terms.repayment_interval)
levels(unite_1953$loans.terms.repayment_interval)[levels(unite_1953$loans.terms.repayment_interval)=="NA"] <- NA

unite_1953$loans.terms.loss_liability.nonpayment <- as.factor(unite_1953$loans.terms.loss_liability.nonpayment)
unite_1953$partners.status <- as.factor(unite_1953$partners.status)
unite_1953$partners.rating <- as.numeric(unite_1953$partners.rating)
unite_1953$partners.start_date <- as.Date(unite_1953$partners.start_date)
unite_1953$partners.delinquency_rate <- as.numeric(unite_1953$partners.delinquency_rate)
unite_1953$partners.default_rate <- as.numeric(unite_1953$partners.default_rate)
unite_1953$loans.location.country <- as.factor(unite_1953$loans.location.country)

#str(unite_1953[,31:34])

