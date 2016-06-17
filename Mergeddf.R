# MERGE LOANS DATASET WITH PARTNERS DATASET

setwd("~/Downloads/kiva/")

#install.packages("jsonlite")
library(dplyr)
library(plyr)
library(jsonlite)

loans1 <- fromJSON("loans/1.json", flatten = TRUE)
loans1 <- as.data.frame(loans1)
loans1$partner_id <- loans1$loans.partner_id

partnersdf <- as.data.frame(fromJSON("partners.json", flatten=TRUE))
partnersdf$partner_id <- partnersdf$partners.id
loans.sorted1 <- loans1[order(loans1$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total1 <- merge(loans.sorted1,partnersdf,by="partner_id")

#Table that sums up if partner has a badge

partners_ids <- matrix(FALSE, nrow = nrow(partnersdf), ncol = 7)
for (i in 1:nrow(partnersdf)) {
  partners_ids[i, partnersdf[i, ]$partners.social_performance_strengths[[1]]$id] <- TRUE
}

colSums(partners_ids) #see how many partners have that badge with id i

ids.df <- as.data.frame(partners_ids)
names(ids.df) <- c("Antipoverty", "Vulnerable Group", "Client Voice", "Family and Community", "Enterpreneurial Support", "Facilitation of Savings", "Innovation") 
ids.df$partner_id <- partnersdf$partners.id

#Assign names to social performance columns by identifying social strengths ids
#1 anti poverty focus, 2 vulnerable group focus, 3 client voice, 4 family and community empowerment, 
#5 enterpreneurial support, 6 facilitation of savings, 7 innovation

#merge total table with information about social performance strenghts

unite1 <- as.data.frame(merge(total1,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

