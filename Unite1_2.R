## CREATE DATASET NR 2 AND RBIND WITH DATASET 1

loans2 <- fromJSON("loans/2.json", flatten = TRUE)
loans2 <- as.data.frame(loans2)
loans2$partner_id <- loans2$loans.partner_id

loans.sorted2 <- loans2[order(loans2$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total2 <- merge(loans.sorted2, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite2 <- as.data.frame(merge(total2,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite2 <- unite2[ , !(names(unite2) %in% drops1)]

## RENAME SOCIAL PERFORMANCE

names(unite2)[names(unite2)=="Antipoverty"] <- "Antipoverty"
names(unite2)[names(unite2)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite2)[names(unite2)=="Client Voice"] <- "Client_Voice"
names(unite2)[names(unite2)=="Family and Community"] <- "Family_Community"
names(unite2)[names(unite2)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite2)[names(unite2)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite2)[names(unite2)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

#UNITE 1 AND 2

unite1_2 <- rbind(unite1, unite2)
unite12_sorted <- unite1_2[order(unite1_2$loans.posted_date),]

