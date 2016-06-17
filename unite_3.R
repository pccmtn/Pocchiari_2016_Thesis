## Unite 100 DATASETS - 1-21, 23-50, AND 1953-2002

## 3

loans3 <- as.data.frame(fromJSON("loans/3.json", flatten = TRUE))
loans3$partner_id <- loans3$loans.partner_id

loans.sorted3 <- loans3[order(loans3$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total3 <- merge(loans.sorted3, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite3 <- as.data.frame(merge(total3,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite3 <- unite3[ , !(names(unite3) %in% drops1)]

## RENAME SOCIAL PERFORMANCE

names(unite3)[names(unite3)=="Antipoverty"] <- "Antipoverty"
names(unite3)[names(unite3)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite3)[names(unite3)=="Client Voice"] <- "Client_Voice"
names(unite3)[names(unite3)=="Family and Community"] <- "Family_Community"
names(unite3)[names(unite3)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite3)[names(unite3)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite3)[names(unite3)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

#UNITE 1 AND 2

unite_3 <- rbind(unite1_2, unite3)

## CHECK DATES

unite_3_sorted <- unite_3[order(unite_3$loans.posted_date),]
unite_3_sorted$loans.posted_date <- as.Date(unite_3$loans.posted_date)
summary(unite_3_sorted$loans.posted_date)

## 4

loans4 <- as.data.frame(fromJSON("loans/4.json", flatten = TRUE))
loans4$partner_id <- loans4$loans.partner_id

loans.sorted4 <- loans4[order(loans4$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total4 <- merge(loans.sorted4, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite4 <- as.data.frame(merge(total4,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite4 <- unite4[ , !(names(unite4) %in% drops1)]
ncol(unite4)

## RENAME SOCIAL PERFORMANCE

names(unite4)[names(unite4)=="Antipoverty"] <- "Antipoverty"
names(unite4)[names(unite4)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite4)[names(unite4)=="Client Voice"] <- "Client_Voice"
names(unite4)[names(unite4)=="Family and Community"] <- "Family_Community"
names(unite4)[names(unite4)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite4)[names(unite4)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite4)[names(unite4)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

#unite4[c("loans.delinquent")][is.na(unite4[c("loans.delinquent")])] <- FALSE

#UNITE 1 AND 2

unite_4 <- rbind(unite_3, unite4)

## CHECK DATES

unite_4$loans.posted_date <- as.Date(unite_4$loans.posted_date)
unite_4_sorted <- unite_4[order(unite_4$loans.posted_date),]
summary(unite_4_sorted$loans.posted_date)

## 5

loans5 <- as.data.frame(fromJSON("loans/5.json", flatten = TRUE))
loans5$partner_id <- loans5$loans.partner_id

loans.sorted5 <- loans5[order(loans5$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total5 <- merge(loans.sorted5, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite5 <- as.data.frame(merge(total5,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite5 <- unite5[ , !(names(unite5) %in% drops1)]
ncol(unite5)

## RENAME SOCIAL PERFORMANCE

names(unite5)[names(unite5)=="Antipoverty"] <- "Antipoverty"
names(unite5)[names(unite5)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite5)[names(unite5)=="Client Voice"] <- "Client_Voice"
names(unite5)[names(unite5)=="Family and Community"] <- "Family_Community"
names(unite5)[names(unite5)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite5)[names(unite5)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite5)[names(unite5)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

#unite5[c("loans.delinquent")][is.na(unite5[c("loans.delinquent")])] <- FALSE

#UNITE 1 AND 2

unite_5 <- rbind(unite_4, unite5)

## CHECK DATES

unite_5$loans.posted_date <- as.Date(unite_5$loans.posted_date)
unite_5_sorted <- unite_5[order(unite_5$loans.posted_date),]
summary(unite_5_sorted$loans.posted_date)


## 6

loans6 <- as.data.frame(fromJSON("loans/6.json", flatten = TRUE))
loans6$partner_id <- loans6$loans.partner_id

loans.sorted6 <- loans6[order(loans6$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total6 <- merge(loans.sorted6, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite6 <- as.data.frame(merge(total6,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite6 <- unite6[ , !(names(unite6) %in% drops1)]
ncol(unite6)

## RENAME SOCIAL PERFORMANCE

names(unite6)[names(unite6)=="Antipoverty"] <- "Antipoverty"
names(unite6)[names(unite6)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite6)[names(unite6)=="Client Voice"] <- "Client_Voice"
names(unite6)[names(unite6)=="Family and Community"] <- "Family_Community"
names(unite6)[names(unite6)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite6)[names(unite6)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite6)[names(unite6)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

#unite6[c("loans.delinquent")][is.na(unite6[c("loans.delinquent")])] <- FALSE

#UNITE 1 AND 2

unite_6 <- rbind(unite_5, unite6)

## CHECK DATES

unite_6$loans.posted_date <- as.Date(unite_6$loans.posted_date)
unite_6_sorted <- unite_6[order(unite_6$loans.posted_date),]
summary(unite_6_sorted$loans.posted_date)

## 7

loans7 <- as.data.frame(fromJSON("loans/7.json", flatten = TRUE))
loans7$partner_id <- loans7$loans.partner_id

loans.sorted7 <- loans7[order(loans7$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total7 <- merge(loans.sorted7, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite7 <- as.data.frame(merge(total7,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite7 <- unite7[ , !(names(unite7) %in% drops1)]

## RENAME SOCIAL PERFORMANCE

names(unite7)[names(unite7)=="Antipoverty"] <- "Antipoverty"
names(unite7)[names(unite7)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite7)[names(unite7)=="Client Voice"] <- "Client_Voice"
names(unite7)[names(unite7)=="Family and Community"] <- "Family_Community"
names(unite7)[names(unite7)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite7)[names(unite7)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite7)[names(unite7)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

#unite7[c("loans.delinquent")][is.na(unite7[c("loans.delinquent")])] <- FALSE

#UNITE 1 AND 2

unite_7 <- rbind(unite_6, unite7)

## CHECK DATES

unite_7$loans.posted_date <- as.Date(unite_7$loans.posted_date)
unite_7_sorted <- unite_7[order(unite_7$loans.posted_date),]
summary(unite_7_sorted$loans.posted_date)

## 8

loans8 <- as.data.frame(fromJSON("loans/8.json", flatten = TRUE))
loans8$partner_id <- loans8$loans.partner_id

loans.sorted8 <- loans8[order(loans8$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total8 <- merge(loans.sorted8, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite8 <- as.data.frame(merge(total8,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite8 <- unite8[ , !(names(unite8) %in% drops1)]

## RENAME SOCIAL PERFORMANCE

names(unite8)[names(unite8)=="Antipoverty"] <- "Antipoverty"
names(unite8)[names(unite8)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite8)[names(unite8)=="Client Voice"] <- "Client_Voice"
names(unite8)[names(unite8)=="Family and Community"] <- "Family_Community"
names(unite8)[names(unite8)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite8)[names(unite8)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite8)[names(unite8)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

#unite8[c("loans.delinquent")][is.na(unite8[c("loans.delinquent")])] <- FALSE

#UNITE 1 AND 2

unite_8 <- rbind(unite_7, unite8)

## CHECK DATES

unite_8$loans.posted_date <- as.Date(unite_8$loans.posted_date)
unite_8_sorted <- unite_8[order(unite_8$loans.posted_date),]
summary(unite_8_sorted$loans.posted_date)

## 9

loans9 <- as.data.frame(fromJSON("loans/9.json", flatten = TRUE))
loans9$partner_id <- loans9$loans.partner_id

loans.sorted9 <- loans9[order(loans9$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total9 <- merge(loans.sorted9, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite9 <- as.data.frame(merge(total9,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite9 <- unite9[ , !(names(unite9) %in% drops1)]

## RENAME SOCIAL PERFORMANCE

names(unite9)[names(unite9)=="Antipoverty"] <- "Antipoverty"
names(unite9)[names(unite9)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite9)[names(unite9)=="Client Voice"] <- "Client_Voice"
names(unite9)[names(unite9)=="Family and Community"] <- "Family_Community"
names(unite9)[names(unite9)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite9)[names(unite9)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite9)[names(unite9)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite9[c("loans.delinquent")][is.na(unite9[c("loans.delinquent")])] <- FALSE

#UNITE 1 AND 2

unite_9 <- rbind(unite_8, unite9)

## CHECK DATES

unite_9$loans.posted_date <- as.Date(unite_9$loans.posted_date)
unite_9_sorted <- unite_9[order(unite_9$loans.posted_date),]

## 10

loans10 <- as.data.frame(fromJSON("loans/10.json", flatten = TRUE))
loans10$partner_id <- loans10$loans.partner_id

loans.sorted10 <- loans10[order(loans10$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total10 <- merge(loans.sorted10, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite10 <- as.data.frame(merge(total10,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite10 <- unite10[ , !(names(unite10) %in% drops1)]


## RENAME SOCIAL PERFORMANCE

names(unite10)[names(unite10)=="Antipoverty"] <- "Antipoverty"
names(unite10)[names(unite10)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite10)[names(unite10)=="Client Voice"] <- "Client_Voice"
names(unite10)[names(unite10)=="Family and Community"] <- "Family_Community"
names(unite10)[names(unite10)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite10)[names(unite10)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite10)[names(unite10)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite10[c("loans.delinquent")][is.na(unite10[c("loans.delinquent")])] <- FALSE

#UNITE

unite_10 <- rbind(unite_9, unite10)

## 11

loans11 <- as.data.frame(fromJSON("loans/11.json", flatten = TRUE))
loans11$partner_id <- loans11$loans.partner_id

loans.sorted11 <- loans11[order(loans11$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total11 <- merge(loans.sorted11, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite11 <- as.data.frame(merge(total11,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite11 <- unite11[ , !(names(unite11) %in% drops1)]

## RENAME SOCIAL PERFORMANCE

names(unite11)[names(unite11)=="Antipoverty"] <- "Antipoverty"
names(unite11)[names(unite11)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite11)[names(unite11)=="Client Voice"] <- "Client_Voice"
names(unite11)[names(unite11)=="Family and Community"] <- "Family_Community"
names(unite11)[names(unite11)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite11)[names(unite11)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite11)[names(unite11)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite11[c("loans.delinquent")][is.na(unite11[c("loans.delinquent")])] <- FALSE

#UNITE

unite_11 <- rbind(unite_10, unite11)


## 12

loans12 <- as.data.frame(fromJSON("loans/12.json", flatten = TRUE))
loans12$partner_id <- loans12$loans.partner_id

loans.sorted12 <- loans12[order(loans12$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total12 <- merge(loans.sorted12, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite12 <- as.data.frame(merge(total12,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite12 <- unite12[ , !(names(unite12) %in% drops1)]
ncol(unite12)
colnames(unite12)

## RENAME SOCIAL PERFORMANCE

names(unite12)[names(unite12)=="Antipoverty"] <- "Antipoverty"
names(unite12)[names(unite12)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite12)[names(unite12)=="Client Voice"] <- "Client_Voice"
names(unite12)[names(unite12)=="Family and Community"] <- "Family_Community"
names(unite12)[names(unite12)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite12)[names(unite12)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite12)[names(unite12)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite12[c("loans.delinquent")][is.na(unite12[c("loans.delinquent")])] <- FALSE

#UNITE

unite_12 <- rbind(unite_11, unite12)


## 13

loans13 <- as.data.frame(fromJSON("loans/13.json", flatten = TRUE))
loans13$partner_id <- loans13$loans.partner_id

loans.sorted13 <- loans13[order(loans13$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total13 <- merge(loans.sorted13, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite13 <- as.data.frame(merge(total13,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite13 <- unite13[ , !(names(unite13) %in% drops1)]

## RENAME SOCIAL PERFORMANCE

names(unite13)[names(unite13)=="Antipoverty"] <- "Antipoverty"
names(unite13)[names(unite13)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite13)[names(unite13)=="Client Voice"] <- "Client_Voice"
names(unite13)[names(unite13)=="Family and Community"] <- "Family_Community"
names(unite13)[names(unite13)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite13)[names(unite13)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite13)[names(unite13)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite13[c("loans.delinquent")][is.na(unite13[c("loans.delinquent")])] <- FALSE

#UNITE

unite_13 <- rbind(unite_12, unite13)

## 14

loans14 <- as.data.frame(fromJSON("loans/14.json", flatten = TRUE))
loans14$partner_id <- loans14$loans.partner_id

loans.sorted14 <- loans14[order(loans14$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total14 <- merge(loans.sorted14, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite14 <- as.data.frame(merge(total14,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite14 <- unite14[ , !(names(unite14) %in% drops1)]

## RENAME SOCIAL PERFORMANCE

names(unite14)[names(unite14)=="Antipoverty"] <- "Antipoverty"
names(unite14)[names(unite14)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite14)[names(unite14)=="Client Voice"] <- "Client_Voice"
names(unite14)[names(unite14)=="Family and Community"] <- "Family_Community"
names(unite14)[names(unite14)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite14)[names(unite14)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite14)[names(unite14)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite14[c("loans.delinquent")][is.na(unite14[c("loans.delinquent")])] <- FALSE

#UNITE

unite_14 <- rbind(unite_13, unite14)

## 15

loans15 <- as.data.frame(fromJSON("loans/15.json", flatten = TRUE))
loans15$partner_id <- loans15$loans.partner_id

loans.sorted15 <- loans15[order(loans15$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total15 <- merge(loans.sorted15, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite15 <- as.data.frame(merge(total15,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite15 <- unite15[ , !(names(unite15) %in% drops1)]

## RENAME SOCIAL PERFORMANCE

names(unite15)[names(unite15)=="Antipoverty"] <- "Antipoverty"
names(unite15)[names(unite15)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite15)[names(unite15)=="Client Voice"] <- "Client_Voice"
names(unite15)[names(unite15)=="Family and Community"] <- "Family_Community"
names(unite15)[names(unite15)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite15)[names(unite15)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite15)[names(unite15)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite15[c("loans.delinquent")][is.na(unite15[c("loans.delinquent")])] <- FALSE

#UNITE

unite_15 <- rbind(unite_14, unite15)


## 16

loans16 <- as.data.frame(fromJSON("loans/16.json", flatten = TRUE))
loans16$partner_id <- loans16$loans.partner_id

loans.sorted16 <- loans16[order(loans16$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total16 <- merge(loans.sorted16, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite16 <- as.data.frame(merge(total16,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite16 <- unite16[ , !(names(unite16) %in% drops1)]


## RENAME SOCIAL PERFORMANCE

names(unite16)[names(unite16)=="Antipoverty"] <- "Antipoverty"
names(unite16)[names(unite16)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite16)[names(unite16)=="Client Voice"] <- "Client_Voice"
names(unite16)[names(unite16)=="Family and Community"] <- "Family_Community"
names(unite16)[names(unite16)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite16)[names(unite16)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite16)[names(unite16)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite16[c("loans.delinquent")][is.na(unite16[c("loans.delinquent")])] <- FALSE

#UNITE

unite_16 <- rbind(unite_15, unite16)

## 17

loans17 <- as.data.frame(fromJSON("loans/17.json", flatten = TRUE))
loans17$partner_id <- loans17$loans.partner_id

loans.sorted17 <- loans17[order(loans17$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total17 <- merge(loans.sorted17, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite17 <- as.data.frame(merge(total17,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite17 <- unite17[ , !(names(unite17) %in% drops1)]

## RENAME SOCIAL PERFORMANCE

names(unite17)[names(unite17)=="Antipoverty"] <- "Antipoverty"
names(unite17)[names(unite17)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite17)[names(unite17)=="Client Voice"] <- "Client_Voice"
names(unite17)[names(unite17)=="Family and Community"] <- "Family_Community"
names(unite17)[names(unite17)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite17)[names(unite17)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite17)[names(unite17)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite17[c("loans.delinquent")][is.na(unite17[c("loans.delinquent")])] <- FALSE

#UNITE

unite_17 <- rbind(unite_16, unite17)

## 18

loans18 <- as.data.frame(fromJSON("loans/18.json", flatten = TRUE))
loans18$partner_id <- loans18$loans.partner_id

loans.sorted18 <- loans18[order(loans18$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total18 <- merge(loans.sorted18, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite18 <- as.data.frame(merge(total18,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite18 <- unite18[ , !(names(unite18) %in% drops1)]
ncol(unite18)
colnames(unite18)

## RENAME SOCIAL PERFORMANCE

names(unite18)[names(unite18)=="Antipoverty"] <- "Antipoverty"
names(unite18)[names(unite18)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite18)[names(unite18)=="Client Voice"] <- "Client_Voice"
names(unite18)[names(unite18)=="Family and Community"] <- "Family_Community"
names(unite18)[names(unite18)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite18)[names(unite18)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite18)[names(unite18)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite18[c("loans.delinquent")][is.na(unite18[c("loans.delinquent")])] <- FALSE

#UNITE

unite_18 <- rbind(unite_17, unite18)

## 19

loans19 <- as.data.frame(fromJSON("loans/19.json", flatten = TRUE))
loans19$partner_id <- loans19$loans.partner_id

loans.sorted19 <- loans19[order(loans19$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total19 <- merge(loans.sorted19, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite19 <- as.data.frame(merge(total19,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite19 <- unite19[ , !(names(unite19) %in% drops1)]

## RENAME SOCIAL PERFORMANCE

names(unite19)[names(unite19)=="Antipoverty"] <- "Antipoverty"
names(unite19)[names(unite19)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite19)[names(unite19)=="Client Voice"] <- "Client_Voice"
names(unite19)[names(unite19)=="Family and Community"] <- "Family_Community"
names(unite19)[names(unite19)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite19)[names(unite19)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite19)[names(unite19)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite19[c("loans.delinquent")][is.na(unite19[c("loans.delinquent")])] <- FALSE

#UNITE

unite_19 <- rbind(unite_18, unite19)

## 20

loans20 <- as.data.frame(fromJSON("loans/20.json", flatten = TRUE))
loans20$partner_id <- loans20$loans.partner_id

loans.sorted20 <- loans20[order(loans20$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total20 <- merge(loans.sorted20, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite20 <- as.data.frame(merge(total20,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite20 <- unite20[ , !(names(unite20) %in% drops1)]

## RENAME SOCIAL PERFORMANCE

names(unite20)[names(unite20)=="Antipoverty"] <- "Antipoverty"
names(unite20)[names(unite20)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite20)[names(unite20)=="Client Voice"] <- "Client_Voice"
names(unite20)[names(unite20)=="Family and Community"] <- "Family_Community"
names(unite20)[names(unite20)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite20)[names(unite20)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite20)[names(unite20)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite20[c("loans.delinquent")][is.na(unite20[c("loans.delinquent")])] <- FALSE

#UNITE

unite_20 <- rbind(unite_19, unite20)

## 21

loans21 <- as.data.frame(fromJSON("loans/21.json", flatten = TRUE))
loans21$partner_id <- loans21$loans.partner_id

loans.sorted21 <- loans21[order(loans21$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total21 <- merge(loans.sorted21, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite21 <- as.data.frame(merge(total21,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite21 <- unite21[ , !(names(unite21) %in% drops1)]

## RENAME SOCIAL PERFORMANCE

names(unite21)[names(unite21)=="Antipoverty"] <- "Antipoverty"
names(unite21)[names(unite21)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite21)[names(unite21)=="Client Voice"] <- "Client_Voice"
names(unite21)[names(unite21)=="Family and Community"] <- "Family_Community"
names(unite21)[names(unite21)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite21)[names(unite21)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite21)[names(unite21)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite21[c("loans.delinquent")][is.na(unite21[c("loans.delinquent")])] <- FALSE

#UNITE

unite_21 <- rbind(unite_20, unite21)

## 26

loans26 <- as.data.frame(fromJSON("loans/26.json", flatten = TRUE))
loans26$partner_id <- loans26$loans.partner_id

loans.sorted26 <- loans26[order(loans26$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total26 <- merge(loans.sorted26, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite26 <- as.data.frame(merge(total26,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite26 <- unite26[ , !(names(unite26) %in% drops1)]

## RENAME SOCIAL PERFORMANCE

names(unite26)[names(unite26)=="Antipoverty"] <- "Antipoverty"
names(unite26)[names(unite26)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite26)[names(unite26)=="Client Voice"] <- "Client_Voice"
names(unite26)[names(unite26)=="Family and Community"] <- "Family_Community"
names(unite26)[names(unite26)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite26)[names(unite26)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite26)[names(unite26)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite26[c("loans.delinquent")][is.na(unite26[c("loans.delinquent")])] <- FALSE

#UNITE

unite_22 <- rbind(unite_21, unite26)

## 23

loans23 <- as.data.frame(fromJSON("loans/23.json", flatten = TRUE))
loans23$partner_id <- loans23$loans.partner_id

loans.sorted23 <- loans23[order(loans23$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total23 <- merge(loans.sorted23, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite23 <- as.data.frame(merge(total23,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite23 <- unite23[ , !(names(unite23) %in% drops1)]

## RENAME SOCIAL PERFORMANCE

names(unite23)[names(unite23)=="Antipoverty"] <- "Antipoverty"
names(unite23)[names(unite23)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite23)[names(unite23)=="Client Voice"] <- "Client_Voice"
names(unite23)[names(unite23)=="Family and Community"] <- "Family_Community"
names(unite23)[names(unite23)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite23)[names(unite23)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite23)[names(unite23)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite23[c("loans.delinquent")][is.na(unite23[c("loans.delinquent")])] <- FALSE

#UNITE

unite_23 <- rbind(unite_22, unite23)

## 18

loans24 <- as.data.frame(fromJSON("loans/24.json", flatten = TRUE))
loans24$partner_id <- loans24$loans.partner_id

loans.sorted24 <- loans24[order(loans24$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total24 <- merge(loans.sorted24, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite24 <- as.data.frame(merge(total24,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite24 <- unite24[ , !(names(unite24) %in% drops1)]

## RENAME SOCIAL PERFORMANCE

names(unite24)[names(unite24)=="Antipoverty"] <- "Antipoverty"
names(unite24)[names(unite24)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite24)[names(unite24)=="Client Voice"] <- "Client_Voice"
names(unite24)[names(unite24)=="Family and Community"] <- "Family_Community"
names(unite24)[names(unite24)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite24)[names(unite24)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite24)[names(unite24)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite24[c("loans.delinquent")][is.na(unite24[c("loans.delinquent")])] <- FALSE

#UNITE

unite_24 <- rbind(unite_23, unite24)

## 25

loans25 <- as.data.frame(fromJSON("loans/25.json", flatten = TRUE))
loans25$partner_id <- loans25$loans.partner_id

loans.sorted25 <- loans25[order(loans25$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total25 <- merge(loans.sorted25, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite25 <- as.data.frame(merge(total25,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite25 <- unite25[ , !(names(unite25) %in% drops1)]


## RENAME SOCIAL PERFORMANCE

names(unite25)[names(unite25)=="Antipoverty"] <- "Antipoverty"
names(unite25)[names(unite25)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite25)[names(unite25)=="Client Voice"] <- "Client_Voice"
names(unite25)[names(unite25)=="Family and Community"] <- "Family_Community"
names(unite25)[names(unite25)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite25)[names(unite25)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite25)[names(unite25)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite25[c("loans.delinquent")][is.na(unite25[c("loans.delinquent")])] <- FALSE

#UNITE

unite_25 <- rbind(unite_24, unite25)

## 27

loans27 <- as.data.frame(fromJSON("loans/27.json", flatten = TRUE))
loans27$partner_id <- loans27$loans.partner_id

loans.sorted27 <- loans27[order(loans27$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total27 <- merge(loans.sorted27, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite27 <- as.data.frame(merge(total27,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite27 <- unite27[ , !(names(unite27) %in% drops1)]


## RENAME SOCIAL PERFORMANCE

names(unite27)[names(unite27)=="Antipoverty"] <- "Antipoverty"
names(unite27)[names(unite27)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite27)[names(unite27)=="Client Voice"] <- "Client_Voice"
names(unite27)[names(unite27)=="Family and Community"] <- "Family_Community"
names(unite27)[names(unite27)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite27)[names(unite27)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite27)[names(unite27)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite27[c("loans.delinquent")][is.na(unite27[c("loans.delinquent")])] <- FALSE

#UNITE

unite_27 <- rbind(unite_25, unite27)

## 28

loans28 <- as.data.frame(fromJSON("loans/28.json", flatten = TRUE))
loans28$partner_id <- loans28$loans.partner_id

loans.sorted28 <- loans28[order(loans28$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total28 <- merge(loans.sorted28, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite28 <- as.data.frame(merge(total28,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite28 <- unite28[ , !(names(unite28) %in% drops1)]

## RENAME SOCIAL PERFORMANCE

names(unite28)[names(unite28)=="Antipoverty"] <- "Antipoverty"
names(unite28)[names(unite28)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite28)[names(unite28)=="Client Voice"] <- "Client_Voice"
names(unite28)[names(unite28)=="Family and Community"] <- "Family_Community"
names(unite28)[names(unite28)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite28)[names(unite28)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite28)[names(unite28)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite28[c("loans.delinquent")][is.na(unite28[c("loans.delinquent")])] <- FALSE

#UNITE

unite_28 <- rbind(unite_27, unite28)

## 29

loans29 <- as.data.frame(fromJSON("loans/29.json", flatten = TRUE))
loans29$partner_id <- loans29$loans.partner_id

loans.sorted29 <- loans29[order(loans29$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total29 <- merge(loans.sorted29, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite29 <- as.data.frame(merge(total29,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite29 <- unite29[ , !(names(unite29) %in% drops1)]

## RENAME SOCIAL PERFORMANCE

names(unite29)[names(unite29)=="Antipoverty"] <- "Antipoverty"
names(unite29)[names(unite29)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite29)[names(unite29)=="Client Voice"] <- "Client_Voice"
names(unite29)[names(unite29)=="Family and Community"] <- "Family_Community"
names(unite29)[names(unite29)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite29)[names(unite29)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite29)[names(unite29)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite29[c("loans.delinquent")][is.na(unite29[c("loans.delinquent")])] <- FALSE

#UNITE

unite_29 <- rbind(unite_28, unite29)

## 30

loans30 <- as.data.frame(fromJSON("loans/30.json", flatten = TRUE))
loans30$partner_id <- loans30$loans.partner_id

loans.sorted30 <- loans30[order(loans30$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total30 <- merge(loans.sorted30, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite30 <- as.data.frame(merge(total30,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite30 <- unite30[ , !(names(unite30) %in% drops1)]

## RENAME SOCIAL PERFORMANCE

names(unite30)[names(unite30)=="Antipoverty"] <- "Antipoverty"
names(unite30)[names(unite30)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite30)[names(unite30)=="Client Voice"] <- "Client_Voice"
names(unite30)[names(unite30)=="Family and Community"] <- "Family_Community"
names(unite30)[names(unite30)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite30)[names(unite30)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite30)[names(unite30)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite30[c("loans.delinquent")][is.na(unite30[c("loans.delinquent")])] <- FALSE

#UNITE

unite_30 <- rbind(unite_29, unite30)

## 31

loans31 <- as.data.frame(fromJSON("loans/31.json", flatten = TRUE))
loans31$partner_id <- loans31$loans.partner_id

loans.sorted31 <- loans31[order(loans31$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total31 <- merge(loans.sorted31, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite31 <- as.data.frame(merge(total31,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite31 <- unite31[ , !(names(unite31) %in% drops1)]

## RENAME SOCIAL PERFORMANCE

names(unite31)[names(unite31)=="Antipoverty"] <- "Antipoverty"
names(unite31)[names(unite31)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite31)[names(unite31)=="Client Voice"] <- "Client_Voice"
names(unite31)[names(unite31)=="Family and Community"] <- "Family_Community"
names(unite31)[names(unite31)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite31)[names(unite31)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite31)[names(unite31)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite31[c("loans.delinquent")][is.na(unite31[c("loans.delinquent")])] <- FALSE

#UNITE

unite_31 <- rbind(unite_30, unite31)

## 32

loans32 <- as.data.frame(fromJSON("loans/32.json", flatten = TRUE))
loans32$partner_id <- loans32$loans.partner_id

loans.sorted32 <- loans32[order(loans32$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total32 <- merge(loans.sorted32, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite32 <- as.data.frame(merge(total32,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite32 <- unite32[ , !(names(unite32) %in% drops1)]
ncol(unite32)
colnames(unite32)

## RENAME SOCIAL PERFORMANCE

names(unite32)[names(unite32)=="Antipoverty"] <- "Antipoverty"
names(unite32)[names(unite32)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite32)[names(unite32)=="Client Voice"] <- "Client_Voice"
names(unite32)[names(unite32)=="Family and Community"] <- "Family_Community"
names(unite32)[names(unite32)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite32)[names(unite32)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite32)[names(unite32)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite32[c("loans.delinquent")][is.na(unite32[c("loans.delinquent")])] <- FALSE

#UNITE

unite_32 <- rbind(unite_31, unite32)

## 33

loans33 <- as.data.frame(fromJSON("loans/33.json", flatten = TRUE))
loans33$partner_id <- loans33$loans.partner_id

loans.sorted33 <- loans33[order(loans33$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total33 <- merge(loans.sorted33, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite33 <- as.data.frame(merge(total33,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite33 <- unite33[ , !(names(unite33) %in% drops1)]
ncol(unite33)
colnames(unite33)

## RENAME SOCIAL PERFORMANCE

names(unite33)[names(unite33)=="Antipoverty"] <- "Antipoverty"
names(unite33)[names(unite33)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite33)[names(unite33)=="Client Voice"] <- "Client_Voice"
names(unite33)[names(unite33)=="Family and Community"] <- "Family_Community"
names(unite33)[names(unite33)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite33)[names(unite33)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite33)[names(unite33)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite33[c("loans.delinquent")][is.na(unite33[c("loans.delinquent")])] <- FALSE

#UNITE

unite_33 <- rbind(unite_32, unite33)

## 34

loans34 <- as.data.frame(fromJSON("loans/34.json", flatten = TRUE))
loans34$partner_id <- loans34$loans.partner_id

loans.sorted34 <- loans34[order(loans34$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total34 <- merge(loans.sorted34, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite34 <- as.data.frame(merge(total34,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite34 <- unite34[ , !(names(unite34) %in% drops1)]
ncol(unite34)
colnames(unite34)

## RENAME SOCIAL PERFORMANCE

names(unite34)[names(unite34)=="Antipoverty"] <- "Antipoverty"
names(unite34)[names(unite34)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite34)[names(unite34)=="Client Voice"] <- "Client_Voice"
names(unite34)[names(unite34)=="Family and Community"] <- "Family_Community"
names(unite34)[names(unite34)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite34)[names(unite34)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite34)[names(unite34)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite34[c("loans.delinquent")][is.na(unite34[c("loans.delinquent")])] <- FALSE

#UNITE

unite_34 <- rbind(unite_33, unite34)

## 35

loans35 <- as.data.frame(fromJSON("loans/35.json", flatten = TRUE))
loans35$partner_id <- loans35$loans.partner_id

loans.sorted35 <- loans35[order(loans35$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total35 <- merge(loans.sorted35, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite35 <- as.data.frame(merge(total35,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite35 <- unite35[ , !(names(unite35) %in% drops1)]

## RENAME SOCIAL PERFORMANCE

names(unite35)[names(unite35)=="Antipoverty"] <- "Antipoverty"
names(unite35)[names(unite35)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite35)[names(unite35)=="Client Voice"] <- "Client_Voice"
names(unite35)[names(unite35)=="Family and Community"] <- "Family_Community"
names(unite35)[names(unite35)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite35)[names(unite35)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite35)[names(unite35)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite35[c("loans.delinquent")][is.na(unite35[c("loans.delinquent")])] <- FALSE

#UNITE

unite_35 <- rbind(unite_34, unite35)

## 36

loans36 <- as.data.frame(fromJSON("loans/36.json", flatten = TRUE))
loans36$partner_id <- loans36$loans.partner_id

loans.sorted36 <- loans36[order(loans36$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total36 <- merge(loans.sorted36, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite36 <- as.data.frame(merge(total36,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite36 <- unite36[ , !(names(unite36) %in% drops1)]
ncol(unite36)
colnames(unite36)

## RENAME SOCIAL PERFORMANCE

names(unite36)[names(unite36)=="Antipoverty"] <- "Antipoverty"
names(unite36)[names(unite36)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite36)[names(unite36)=="Client Voice"] <- "Client_Voice"
names(unite36)[names(unite36)=="Family and Community"] <- "Family_Community"
names(unite36)[names(unite36)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite36)[names(unite36)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite36)[names(unite36)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite36[c("loans.delinquent")][is.na(unite36[c("loans.delinquent")])] <- FALSE

#UNITE

unite_36 <- rbind(unite_35, unite36)

## 37

loans37 <- as.data.frame(fromJSON("loans/37.json", flatten = TRUE))
loans37$partner_id <- loans37$loans.partner_id

loans.sorted37 <- loans37[order(loans37$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total37 <- merge(loans.sorted37, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite37 <- as.data.frame(merge(total37,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite37 <- unite37[ , !(names(unite37) %in% drops1)]
ncol(unite37)
colnames(unite37)

## RENAME SOCIAL PERFORMANCE

names(unite37)[names(unite37)=="Antipoverty"] <- "Antipoverty"
names(unite37)[names(unite37)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite37)[names(unite37)=="Client Voice"] <- "Client_Voice"
names(unite37)[names(unite37)=="Family and Community"] <- "Family_Community"
names(unite37)[names(unite37)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite37)[names(unite37)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite37)[names(unite37)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite37[c("loans.delinquent")][is.na(unite37[c("loans.delinquent")])] <- FALSE

#UNITE

unite_37 <- rbind(unite_36, unite37)

## 38

loans38 <- as.data.frame(fromJSON("loans/38.json", flatten = TRUE))
loans38$partner_id <- loans38$loans.partner_id

loans.sorted38 <- loans38[order(loans38$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total38 <- merge(loans.sorted38, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite38 <- as.data.frame(merge(total38,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite38 <- unite38[ , !(names(unite38) %in% drops1)]
ncol(unite38)
colnames(unite38)

## RENAME SOCIAL PERFORMANCE

names(unite38)[names(unite38)=="Antipoverty"] <- "Antipoverty"
names(unite38)[names(unite38)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite38)[names(unite38)=="Client Voice"] <- "Client_Voice"
names(unite38)[names(unite38)=="Family and Community"] <- "Family_Community"
names(unite38)[names(unite38)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite38)[names(unite38)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite38)[names(unite38)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite38[c("loans.delinquent")][is.na(unite38[c("loans.delinquent")])] <- FALSE

#UNITE

unite_38 <- rbind(unite_37, unite38)

## 39

loans39 <- as.data.frame(fromJSON("loans/39.json", flatten = TRUE))
loans39$partner_id <- loans39$loans.partner_id

loans.sorted39 <- loans39[order(loans39$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total39 <- merge(loans.sorted39, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite39 <- as.data.frame(merge(total39,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite39 <- unite39[ , !(names(unite39) %in% drops1)]
ncol(unite39)
colnames(unite39)

## RENAME SOCIAL PERFORMANCE

names(unite39)[names(unite39)=="Antipoverty"] <- "Antipoverty"
names(unite39)[names(unite39)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite39)[names(unite39)=="Client Voice"] <- "Client_Voice"
names(unite39)[names(unite39)=="Family and Community"] <- "Family_Community"
names(unite39)[names(unite39)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite39)[names(unite39)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite39)[names(unite39)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite39[c("loans.delinquent")][is.na(unite39[c("loans.delinquent")])] <- FALSE

#UNITE

unite_39 <- rbind(unite_38, unite39)

## 40

loans40 <- as.data.frame(fromJSON("loans/40.json", flatten = TRUE))
loans40$partner_id <- loans40$loans.partner_id

loans.sorted40 <- loans40[order(loans40$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total40 <- merge(loans.sorted40, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite40 <- as.data.frame(merge(total40,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite40 <- unite40[ , !(names(unite40) %in% drops1)]
ncol(unite40)
colnames(unite40)

## RENAME SOCIAL PERFORMANCE

names(unite40)[names(unite40)=="Antipoverty"] <- "Antipoverty"
names(unite40)[names(unite40)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite40)[names(unite40)=="Client Voice"] <- "Client_Voice"
names(unite40)[names(unite40)=="Family and Community"] <- "Family_Community"
names(unite40)[names(unite40)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite40)[names(unite40)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite40)[names(unite40)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite40[c("loans.delinquent")][is.na(unite40[c("loans.delinquent")])] <- FALSE

#UNITE

unite_40 <- rbind(unite_39, unite40)

## 41

loans41 <- as.data.frame(fromJSON("loans/41.json", flatten = TRUE))
loans41$partner_id <- loans41$loans.partner_id

loans.sorted41 <- loans41[order(loans41$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total41 <- merge(loans.sorted41, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite41 <- as.data.frame(merge(total41,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite41 <- unite41[ , !(names(unite41) %in% drops1)]
ncol(unite41)
colnames(unite41)

## RENAME SOCIAL PERFORMANCE

names(unite41)[names(unite41)=="Antipoverty"] <- "Antipoverty"
names(unite41)[names(unite41)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite41)[names(unite41)=="Client Voice"] <- "Client_Voice"
names(unite41)[names(unite41)=="Family and Community"] <- "Family_Community"
names(unite41)[names(unite41)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite41)[names(unite41)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite41)[names(unite41)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite41[c("loans.delinquent")][is.na(unite41[c("loans.delinquent")])] <- FALSE

#UNITE

unite_41 <- rbind(unite_40, unite41)

## 42

loans42 <- as.data.frame(fromJSON("loans/42.json", flatten = TRUE))
loans42$partner_id <- loans42$loans.partner_id

loans.sorted42 <- loans42[order(loans42$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total42 <- merge(loans.sorted42, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite42 <- as.data.frame(merge(total42,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite42 <- unite42[ , !(names(unite42) %in% drops1)]
ncol(unite42)
colnames(unite42)

## RENAME SOCIAL PERFORMANCE

names(unite42)[names(unite42)=="Antipoverty"] <- "Antipoverty"
names(unite42)[names(unite42)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite42)[names(unite42)=="Client Voice"] <- "Client_Voice"
names(unite42)[names(unite42)=="Family and Community"] <- "Family_Community"
names(unite42)[names(unite42)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite42)[names(unite42)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite42)[names(unite42)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite42[c("loans.delinquent")][is.na(unite42[c("loans.delinquent")])] <- FALSE

#UNITE

unite_42 <- rbind(unite_41, unite42)

## 43

loans43 <- as.data.frame(fromJSON("loans/43.json", flatten = TRUE))
loans43$partner_id <- loans43$loans.partner_id

loans.sorted43 <- loans43[order(loans43$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total43 <- merge(loans.sorted43, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite43 <- as.data.frame(merge(total43,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite43 <- unite43[ , !(names(unite43) %in% drops1)]
ncol(unite43)
colnames(unite43)

## RENAME SOCIAL PERFORMANCE

names(unite43)[names(unite43)=="Antipoverty"] <- "Antipoverty"
names(unite43)[names(unite43)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite43)[names(unite43)=="Client Voice"] <- "Client_Voice"
names(unite43)[names(unite43)=="Family and Community"] <- "Family_Community"
names(unite43)[names(unite43)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite43)[names(unite43)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite43)[names(unite43)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite43[c("loans.delinquent")][is.na(unite43[c("loans.delinquent")])] <- FALSE

#UNITE

unite_43 <- rbind(unite_42, unite43)

## 44

loans44 <- as.data.frame(fromJSON("loans/44.json", flatten = TRUE))
loans44$partner_id <- loans44$loans.partner_id

loans.sorted44 <- loans44[order(loans44$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total44 <- merge(loans.sorted44, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite44 <- as.data.frame(merge(total44,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite44 <- unite44[ , !(names(unite44) %in% drops1)]
ncol(unite44)
colnames(unite44)

## RENAME SOCIAL PERFORMANCE

names(unite44)[names(unite44)=="Antipoverty"] <- "Antipoverty"
names(unite44)[names(unite44)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite44)[names(unite44)=="Client Voice"] <- "Client_Voice"
names(unite44)[names(unite44)=="Family and Community"] <- "Family_Community"
names(unite44)[names(unite44)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite44)[names(unite44)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite44)[names(unite44)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite44[c("loans.delinquent")][is.na(unite44[c("loans.delinquent")])] <- FALSE

#UNITE

unite_44 <- rbind(unite_43, unite44)

## 45

loans45 <- as.data.frame(fromJSON("loans/45.json", flatten = TRUE))
loans45$partner_id <- loans45$loans.partner_id

loans.sorted45 <- loans45[order(loans45$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total45 <- merge(loans.sorted45, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite45 <- as.data.frame(merge(total45,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite45 <- unite45[ , !(names(unite45) %in% drops1)]
ncol(unite45)
colnames(unite45)

## RENAME SOCIAL PERFORMANCE

names(unite45)[names(unite45)=="Antipoverty"] <- "Antipoverty"
names(unite45)[names(unite45)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite45)[names(unite45)=="Client Voice"] <- "Client_Voice"
names(unite45)[names(unite45)=="Family and Community"] <- "Family_Community"
names(unite45)[names(unite45)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite45)[names(unite45)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite45)[names(unite45)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite45[c("loans.delinquent")][is.na(unite45[c("loans.delinquent")])] <- FALSE

#UNITE

unite_45 <- rbind(unite_44, unite45)

## 46

loans46 <- as.data.frame(fromJSON("loans/46.json", flatten = TRUE))
loans46$partner_id <- loans46$loans.partner_id

loans.sorted46 <- loans46[order(loans46$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total46 <- merge(loans.sorted46, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite46 <- as.data.frame(merge(total46,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite46 <- unite46[ , !(names(unite46) %in% drops1)]
ncol(unite46)
colnames(unite46)

## RENAME SOCIAL PERFORMANCE

names(unite46)[names(unite46)=="Antipoverty"] <- "Antipoverty"
names(unite46)[names(unite46)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite46)[names(unite46)=="Client Voice"] <- "Client_Voice"
names(unite46)[names(unite46)=="Family and Community"] <- "Family_Community"
names(unite46)[names(unite46)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite46)[names(unite46)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite46)[names(unite46)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite46[c("loans.delinquent")][is.na(unite46[c("loans.delinquent")])] <- FALSE

#UNITE

unite_46 <- rbind(unite_45, unite46)

## 47

loans47 <- as.data.frame(fromJSON("loans/47.json", flatten = TRUE))
loans47$partner_id <- loans47$loans.partner_id

loans.sorted47 <- loans47[order(loans47$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total47 <- merge(loans.sorted47, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite47 <- as.data.frame(merge(total47,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite47 <- unite47[ , !(names(unite47) %in% drops1)]
ncol(unite47)
colnames(unite47)

## RENAME SOCIAL PERFORMANCE

names(unite47)[names(unite47)=="Antipoverty"] <- "Antipoverty"
names(unite47)[names(unite47)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite47)[names(unite47)=="Client Voice"] <- "Client_Voice"
names(unite47)[names(unite47)=="Family and Community"] <- "Family_Community"
names(unite47)[names(unite47)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite47)[names(unite47)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite47)[names(unite47)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite47[c("loans.delinquent")][is.na(unite47[c("loans.delinquent")])] <- FALSE

#UNITE

unite_47 <- rbind(unite_46, unite47)

## 48

loans48 <- as.data.frame(fromJSON("loans/48.json", flatten = TRUE))
loans48$partner_id <- loans48$loans.partner_id

loans.sorted48 <- loans48[order(loans48$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total48 <- merge(loans.sorted48, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite48 <- as.data.frame(merge(total48,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite48 <- unite48[ , !(names(unite48) %in% drops1)]
ncol(unite48)
colnames(unite48)

## RENAME SOCIAL PERFORMANCE

names(unite48)[names(unite48)=="Antipoverty"] <- "Antipoverty"
names(unite48)[names(unite48)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite48)[names(unite48)=="Client Voice"] <- "Client_Voice"
names(unite48)[names(unite48)=="Family and Community"] <- "Family_Community"
names(unite48)[names(unite48)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite48)[names(unite48)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite48)[names(unite48)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite48[c("loans.delinquent")][is.na(unite48[c("loans.delinquent")])] <- FALSE

#UNITE

unite_48 <- rbind(unite_47, unite48)

## 49

loans49 <- as.data.frame(fromJSON("loans/49.json", flatten = TRUE))
loans49$partner_id <- loans49$loans.partner_id

loans.sorted49 <- loans49[order(loans49$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total49 <- merge(loans.sorted49, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite49 <- as.data.frame(merge(total49,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite49 <- unite49[ , !(names(unite49) %in% drops1)]
ncol(unite49)
colnames(unite49)

## RENAME SOCIAL PERFORMANCE

names(unite49)[names(unite49)=="Antipoverty"] <- "Antipoverty"
names(unite49)[names(unite49)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite49)[names(unite49)=="Client Voice"] <- "Client_Voice"
names(unite49)[names(unite49)=="Family and Community"] <- "Family_Community"
names(unite49)[names(unite49)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite49)[names(unite49)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite49)[names(unite49)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite49[c("loans.delinquent")][is.na(unite49[c("loans.delinquent")])] <- FALSE

#UNITE

unite_49 <- rbind(unite_48, unite49)

## 50

loans50 <- as.data.frame(fromJSON("loans/50.json", flatten = TRUE))
loans50$partner_id <- loans50$loans.partner_id

loans.sorted50 <- loans50[order(loans50$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total50 <- merge(loans.sorted50, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite50 <- as.data.frame(merge(total50,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite50 <- unite50[ , !(names(unite50) %in% drops1)]
ncol(unite50)
colnames(unite50)

## RENAME SOCIAL PERFORMANCE

names(unite50)[names(unite50)=="Antipoverty"] <- "Antipoverty"
names(unite50)[names(unite50)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite50)[names(unite50)=="Client Voice"] <- "Client_Voice"
names(unite50)[names(unite50)=="Family and Community"] <- "Family_Community"
names(unite50)[names(unite50)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite50)[names(unite50)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite50)[names(unite50)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite50[c("loans.delinquent")][is.na(unite50[c("loans.delinquent")])] <- FALSE

#UNITE

unite_50 <- rbind(unite_49, unite50)

## 2002

loans2002 <- as.data.frame(fromJSON("loans/2002.json", flatten = TRUE))
loans2002$partner_id <- loans2002$loans.partner_id

loans.sorted2002 <- loans2002[order(loans2002$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total2002 <- merge(loans.sorted2002, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite2002 <- as.data.frame(merge(total2002,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite2002 <- unite2002[ , !(names(unite2002) %in% drops1)]
ncol(unite2002)
colnames(unite2002)

## RENAME SOCIAL PERFORMANCE

names(unite2002)[names(unite2002)=="Antipoverty"] <- "Antipoverty"
names(unite2002)[names(unite2002)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite2002)[names(unite2002)=="Client Voice"] <- "Client_Voice"
names(unite2002)[names(unite2002)=="Family and Community"] <- "Family_Community"
names(unite2002)[names(unite2002)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite2002)[names(unite2002)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite2002)[names(unite2002)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite2002[c("loans.delinquent")][is.na(unite2002[c("loans.delinquent")])] <- FALSE

#UNITE

unite_2002 <- rbind(unite_35, unite2002)

## CHECK DATES

unite_2002$loans.funded_date <- as.Date(unite_2002$loans.funded_date)
unite_2002_sorted <- unite_2002[order(unite_2002$loans.funded_date),]
summary(unite_2002_sorted$loans.funded_date)
mean(unite_2002$loans.loan_amount)
sd(unite_2002$loans.loan_amount)

before2011 <- as.data.frame(unite_2002_sorted$loans.funded_date <= "2011-12-11")
unite_2002_sorted[before2011, ]

## 2001

loans2001 <- as.data.frame(fromJSON("loans/2001.json", flatten = TRUE))
loans2001$partner_id <- loans2001$loans.partner_id

loans.sorted2001 <- loans2001[order(loans2001$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total2001 <- merge(loans.sorted2001, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite2001 <- as.data.frame(merge(total2001,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite2001 <- unite2001[ , !(names(unite2001) %in% drops1)]
ncol(unite2001)
colnames(unite2001)

## RENAME SOCIAL PERFORMANCE

names(unite2001)[names(unite2001)=="Antipoverty"] <- "Antipoverty"
names(unite2001)[names(unite2001)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite2001)[names(unite2001)=="Client Voice"] <- "Client_Voice"
names(unite2001)[names(unite2001)=="Family and Community"] <- "Family_Community"
names(unite2001)[names(unite2001)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite2001)[names(unite2001)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite2001)[names(unite2001)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite2001[c("loans.delinquent")][is.na(unite2001[c("loans.delinquent")])] <- FALSE

#UNITE

unite_2001 <- rbind(unite_2002, unite2001)
unite_2001 <- unite_2001[ , !(names(unite_2001) %in% drops1)]

## CHECK DATES

unite_2001$loans.funded_date <- as.Date(unite_2001$loans.funded_date)
unite_2001_sorted <- unite_2001[order(unite_2001$loans.funded_date),]
summary(unite_2001_sorted$loans.funded_date)
mean(unite_2001$loans.loan_amount)
sd(unite_2001$loans.loan_amount)

## 2000

loans2000 <- as.data.frame(fromJSON("loans/2000.json", flatten = TRUE))
loans2000$partner_id <- loans2000$loans.partner_id

loans.sorted2000 <- loans2000[order(loans2000$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total2000 <- merge(loans.sorted2000, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite2000 <- as.data.frame(merge(total2000,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite2000 <- unite2000[ , !(names(unite2000) %in% drops1)]
ncol(unite2000)
colnames(unite2000)

## RENAME SOCIAL PERFORMANCE

names(unite2000)[names(unite2000)=="Antipoverty"] <- "Antipoverty"
names(unite2000)[names(unite2000)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite2000)[names(unite2000)=="Client Voice"] <- "Client_Voice"
names(unite2000)[names(unite2000)=="Family and Community"] <- "Family_Community"
names(unite2000)[names(unite2000)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite2000)[names(unite2000)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite2000)[names(unite2000)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite2000[c("loans.delinquent")][is.na(unite2000[c("loans.delinquent")])] <- FALSE

#UNITE

unite_2000 <- rbind(unite_2001, unite2000)
unite_2000 <- unite_2000[ , !(names(unite_2000) %in% drops1)]

## CHECK DATES

unite_2000$loans.funded_date <- as.Date(unite_2000$loans.funded_date)
unite_2000_sorted <- unite_2000[order(unite_2000$loans.funded_date),]
summary(unite_2000_sorted$loans.funded_date)
mean(unite_2000$loans.loan_amount)
sd(unite_2000$loans.loan_amount)

#1999

loans1999 <- as.data.frame(fromJSON("loans/1999.json", flatten = TRUE))
loans1999$partner_id <- loans1999$loans.partner_id

loans.sorted1999 <- loans1999[order(loans1999$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total1999 <- merge(loans.sorted1999, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite1999 <- as.data.frame(merge(total1999,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite1999 <- unite1999[ , !(names(unite1999) %in% drops1)]
ncol(unite1999)
colnames(unite1999)

## RENAME SOCIAL PERFORMANCE

names(unite1999)[names(unite1999)=="Antipoverty"] <- "Antipoverty"
names(unite1999)[names(unite1999)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite1999)[names(unite1999)=="Client Voice"] <- "Client_Voice"
names(unite1999)[names(unite1999)=="Family and Community"] <- "Family_Community"
names(unite1999)[names(unite1999)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite1999)[names(unite1999)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite1999)[names(unite1999)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite1999[c("loans.delinquent")][is.na(unite1999[c("loans.delinquent")])] <- FALSE

#UNITE

unite_1999 <- rbind(unite_2000, unite1999)


## CHECK DATES

unite_1999$loans.funded_date <- as.Date(unite_1999$loans.funded_date)
unite_1999_sorted <- unite_1999[order(unite_1999$loans.funded_date),]
summary(unite_1999_sorted$loans.funded_date)
mean(unite_1999$loans.loan_amount)
sd(unite_1999$loans.loan_amount)

## 1998

loans1998 <- as.data.frame(fromJSON("loans/1998.json", flatten = TRUE))
loans1998$partner_id <- loans1998$loans.partner_id

loans.sorted1998 <- loans1998[order(loans1998$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total1998 <- merge(loans.sorted1998, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite1998 <- as.data.frame(merge(total1998,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite1998 <- unite1998[ , !(names(unite1998) %in% drops1)]
ncol(unite1998)
colnames(unite1998)

## RENAME SOCIAL PERFORMANCE

names(unite1998)[names(unite1998)=="Antipoverty"] <- "Antipoverty"
names(unite1998)[names(unite1998)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite1998)[names(unite1998)=="Client Voice"] <- "Client_Voice"
names(unite1998)[names(unite1998)=="Family and Community"] <- "Family_Community"
names(unite1998)[names(unite1998)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite1998)[names(unite1998)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite1998)[names(unite1998)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite1998[c("loans.delinquent")][is.na(unite1998[c("loans.delinquent")])] <- FALSE

#UNITE

unite_1998 <- rbind(unite_1999, unite1998)


## CHECK DATES

unite_1998$loans.funded_date <- as.Date(unite_1998$loans.funded_date)
unite_1998_sorted <- unite_1998[order(unite_1998$loans.funded_date),]
summary(unite_1998_sorted$loans.funded_date)
mean(unite_1998$loans.loan_amount)
sd(unite_1998$loans.loan_amount)

## 1997 

loans1997 <- as.data.frame(fromJSON("loans/1997.json", flatten = TRUE))
loans1997$partner_id <- loans1997$loans.partner_id

loans.sorted1997 <- loans1997[order(loans1997$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total1997 <- merge(loans.sorted1997, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite1997 <- as.data.frame(merge(total1997,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite1997 <- unite1997[ , !(names(unite1997) %in% drops1)]
ncol(unite1997)
colnames(unite1997)

## RENAME SOCIAL PERFORMANCE

names(unite1997)[names(unite1997)=="Antipoverty"] <- "Antipoverty"
names(unite1997)[names(unite1997)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite1997)[names(unite1997)=="Client Voice"] <- "Client_Voice"
names(unite1997)[names(unite1997)=="Family and Community"] <- "Family_Community"
names(unite1997)[names(unite1997)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite1997)[names(unite1997)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite1997)[names(unite1997)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite1997[c("loans.delinquent")][is.na(unite1997[c("loans.delinquent")])] <- FALSE

#UNITE

unite_1997 <- rbind(unite_1998, unite1997)


## CHECK DATES

unite_1997$loans.funded_date <- as.Date(unite_1997$loans.funded_date)
unite_1997_sorted <- unite_1997[order(unite_1997$loans.funded_date),]
summary(unite_1997_sorted$loans.funded_date)
mean(unite_1997$loans.loan_amount)
sd(unite_1997$loans.loan_amount)

## 1996

loans1996 <- as.data.frame(fromJSON("loans/1996.json", flatten = TRUE))
loans1996$partner_id <- loans1996$loans.partner_id

loans.sorted1996 <- loans1996[order(loans1996$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total1996 <- merge(loans.sorted1996, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite1996 <- as.data.frame(merge(total1996,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite1996 <- unite1996[ , !(names(unite1996) %in% drops1)]
ncol(unite1996)
colnames(unite1996)

## RENAME SOCIAL PERFORMANCE

names(unite1996)[names(unite1996)=="Antipoverty"] <- "Antipoverty"
names(unite1996)[names(unite1996)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite1996)[names(unite1996)=="Client Voice"] <- "Client_Voice"
names(unite1996)[names(unite1996)=="Family and Community"] <- "Family_Community"
names(unite1996)[names(unite1996)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite1996)[names(unite1996)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite1996)[names(unite1996)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite1996[c("loans.delinquent")][is.na(unite1996[c("loans.delinquent")])] <- FALSE

#UNITE

unite_1996 <- rbind(unite_1997, unite1996)


## CHECK DATES

unite_1996$loans.funded_date <- as.Date(unite_1996$loans.funded_date)
unite_1996_sorted <- unite_1996[order(unite_1996$loans.funded_date),]
summary(unite_1996_sorted$loans.funded_date)
mean(unite_1996$loans.loan_amount)
sd(unite_1996$loans.loan_amount)

## 1995

loans1995 <- as.data.frame(fromJSON("loans/1995.json", flatten = TRUE))
loans1995$partner_id <- loans1995$loans.partner_id

loans.sorted1995 <- loans1995[order(loans1995$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total1995 <- merge(loans.sorted1995, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite1995 <- as.data.frame(merge(total1995,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite1995 <- unite1995[ , !(names(unite1995) %in% drops1)]
ncol(unite1995)
colnames(unite1995)

## RENAME SOCIAL PERFORMANCE

names(unite1995)[names(unite1995)=="Antipoverty"] <- "Antipoverty"
names(unite1995)[names(unite1995)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite1995)[names(unite1995)=="Client Voice"] <- "Client_Voice"
names(unite1995)[names(unite1995)=="Family and Community"] <- "Family_Community"
names(unite1995)[names(unite1995)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite1995)[names(unite1995)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite1995)[names(unite1995)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite1995[c("loans.delinquent")][is.na(unite1995[c("loans.delinquent")])] <- FALSE

#UNITE

unite_1995 <- rbind(unite_1996, unite1995)


## CHECK DATES

unite_1995$loans.funded_date <- as.Date(unite_1995$loans.funded_date)
unite_1995_sorted <- unite_1995[order(unite_1995$loans.funded_date),]
summary(unite_1995_sorted$loans.funded_date)
mean(unite_1995$loans.loan_amount)
sd(unite_1995$loans.loan_amount)

## 1994

loans1994 <- as.data.frame(fromJSON("loans/1994.json", flatten = TRUE))
loans1994$partner_id <- loans1994$loans.partner_id

loans.sorted1994 <- loans1994[order(loans1994$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total1994 <- merge(loans.sorted1994, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite1994 <- as.data.frame(merge(total1994,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite1994 <- unite1994[ , !(names(unite1994) %in% drops1)]
ncol(unite1994)
colnames(unite1994)

## RENAME SOCIAL PERFORMANCE

names(unite1994)[names(unite1994)=="Antipoverty"] <- "Antipoverty"
names(unite1994)[names(unite1994)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite1994)[names(unite1994)=="Client Voice"] <- "Client_Voice"
names(unite1994)[names(unite1994)=="Family and Community"] <- "Family_Community"
names(unite1994)[names(unite1994)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite1994)[names(unite1994)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite1994)[names(unite1994)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite1994[c("loans.delinquent")][is.na(unite1994[c("loans.delinquent")])] <- FALSE

#UNITE

unite_1994 <- rbind(unite_1995, unite1994)


## CHECK DATES

unite_1994$loans.funded_date <- as.Date(unite_1994$loans.funded_date)
unite_1994_sorted <- unite_1994[order(unite_1994$loans.funded_date),]
summary(unite_1994_sorted$loans.funded_date)
mean(unite_1994$loans.loan_amount)
sd(unite_1994$loans.loan_amount)

## 1993

loans1993 <- as.data.frame(fromJSON("loans/1993.json", flatten = TRUE))
loans1993$partner_id <- loans1993$loans.partner_id

loans.sorted1993 <- loans1993[order(loans1993$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total1993 <- merge(loans.sorted1993, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite1993 <- as.data.frame(merge(total1993,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite1993 <- unite1993[ , !(names(unite1993) %in% drops1)]
ncol(unite1993)
colnames(unite1993)

## RENAME SOCIAL PERFORMANCE

names(unite1993)[names(unite1993)=="Antipoverty"] <- "Antipoverty"
names(unite1993)[names(unite1993)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite1993)[names(unite1993)=="Client Voice"] <- "Client_Voice"
names(unite1993)[names(unite1993)=="Family and Community"] <- "Family_Community"
names(unite1993)[names(unite1993)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite1993)[names(unite1993)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite1993)[names(unite1993)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite1993[c("loans.delinquent")][is.na(unite1993[c("loans.delinquent")])] <- FALSE

#UNITE

unite_1993 <- rbind(unite_1994, unite1993)


## CHECK DATES

unite_1993$loans.funded_date <- as.Date(unite_1993$loans.funded_date)
unite_1993_sorted <- unite_1993[order(unite_1993$loans.funded_date),]
summary(unite_1993_sorted$loans.funded_date)
mean(unite_1993$loans.loan_amount)
sd(unite_1993$loans.loan_amount)

#1992

loans1992 <- as.data.frame(fromJSON("loans/1992.json", flatten = TRUE))
loans1992$partner_id <- loans1992$loans.partner_id

loans.sorted1992 <- loans1992[order(loans1992$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total1992 <- merge(loans.sorted1992, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite1992 <- as.data.frame(merge(total1992,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite1992 <- unite1992[ , !(names(unite1992) %in% drops1)]
ncol(unite1992)
colnames(unite1992)

## RENAME SOCIAL PERFORMANCE

names(unite1992)[names(unite1992)=="Antipoverty"] <- "Antipoverty"
names(unite1992)[names(unite1992)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite1992)[names(unite1992)=="Client Voice"] <- "Client_Voice"
names(unite1992)[names(unite1992)=="Family and Community"] <- "Family_Community"
names(unite1992)[names(unite1992)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite1992)[names(unite1992)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite1992)[names(unite1992)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite1992[c("loans.delinquent")][is.na(unite1992[c("loans.delinquent")])] <- FALSE

#UNITE

unite_1992 <- rbind(unite_1993, unite1992)


## CHECK DATES

unite_1992$loans.funded_date <- as.Date(unite_1992$loans.funded_date)
unite_1992_sorted <- unite_1992[order(unite_1992$loans.funded_date),]
summary(unite_1992_sorted$loans.funded_date)
mean(unite_1992$loans.loan_amount)
sd(unite_1992$loans.loan_amount)

## 1991

loans1991 <- as.data.frame(fromJSON("loans/1991.json", flatten = TRUE))
loans1991$partner_id <- loans1991$loans.partner_id

loans.sorted1991 <- loans1991[order(loans1991$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total1991 <- merge(loans.sorted1991, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite1991 <- as.data.frame(merge(total1991,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite1991 <- unite1991[ , !(names(unite1991) %in% drops1)]
ncol(unite1991)
colnames(unite1991)

## RENAME SOCIAL PERFORMANCE

names(unite1991)[names(unite1991)=="Antipoverty"] <- "Antipoverty"
names(unite1991)[names(unite1991)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite1991)[names(unite1991)=="Client Voice"] <- "Client_Voice"
names(unite1991)[names(unite1991)=="Family and Community"] <- "Family_Community"
names(unite1991)[names(unite1991)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite1991)[names(unite1991)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite1991)[names(unite1991)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite1991[c("loans.delinquent")][is.na(unite1991[c("loans.delinquent")])] <- FALSE

#UNITE

unite_1991 <- rbind(unite_1992, unite1991)


## CHECK DATES

unite_1991$loans.funded_date <- as.Date(unite_1991$loans.funded_date)
unite_1991_sorted <- unite_1991[order(unite_1991$loans.funded_date),]
summary(unite_1991_sorted$loans.funded_date)
mean(unite_1991$loans.loan_amount)
sd(unite_1991$loans.loan_amount)

## 1990

loans1990 <- as.data.frame(fromJSON("loans/1990.json", flatten = TRUE))
loans1990$partner_id <- loans1990$loans.partner_id

loans.sorted1990 <- loans1990[order(loans1990$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total1990 <- merge(loans.sorted1990, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite1990 <- as.data.frame(merge(total1990,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite1990 <- unite1990[ , !(names(unite1990) %in% drops1)]
ncol(unite1990)
colnames(unite1990)

## RENAME SOCIAL PERFORMANCE

names(unite1990)[names(unite1990)=="Antipoverty"] <- "Antipoverty"
names(unite1990)[names(unite1990)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite1990)[names(unite1990)=="Client Voice"] <- "Client_Voice"
names(unite1990)[names(unite1990)=="Family and Community"] <- "Family_Community"
names(unite1990)[names(unite1990)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite1990)[names(unite1990)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite1990)[names(unite1990)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite1990[c("loans.delinquent")][is.na(unite1990[c("loans.delinquent")])] <- FALSE

#UNITE

unite_1990 <- rbind(unite_1991, unite1990)


## CHECK DATES

unite_1990$loans.funded_date <- as.Date(unite_1990$loans.funded_date)
unite_1990_sorted <- unite_1990[order(unite_1990$loans.funded_date),]
summary(unite_1990_sorted$loans.funded_date)
mean(unite_1990$loans.loan_amount)
sd(unite_1990$loans.loan_amount)

## 1989

loans1989 <- as.data.frame(fromJSON("loans/1989.json", flatten = TRUE))
loans1989$partner_id <- loans1989$loans.partner_id

loans.sorted1989 <- loans1989[order(loans1989$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total1989 <- merge(loans.sorted1989, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite1989 <- as.data.frame(merge(total1989,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite1989 <- unite1989[ , !(names(unite1989) %in% drops1)]
ncol(unite1989)
colnames(unite1989)

## RENAME SOCIAL PERFORMANCE

names(unite1989)[names(unite1989)=="Antipoverty"] <- "Antipoverty"
names(unite1989)[names(unite1989)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite1989)[names(unite1989)=="Client Voice"] <- "Client_Voice"
names(unite1989)[names(unite1989)=="Family and Community"] <- "Family_Community"
names(unite1989)[names(unite1989)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite1989)[names(unite1989)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite1989)[names(unite1989)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite1989[c("loans.delinquent")][is.na(unite1989[c("loans.delinquent")])] <- FALSE

#UNITE

unite_1989 <- rbind(unite_1990, unite1989)


## CHECK DATES

unite_1989$loans.funded_date <- as.Date(unite_1989$loans.funded_date)
unite_1989_sorted <- unite_1989[order(unite_1989$loans.funded_date),]
summary(unite_1989_sorted$loans.funded_date)
mean(unite_1989$loans.loan_amount)
sd(unite_1989$loans.loan_amount)

## 1988

loans1988 <- as.data.frame(fromJSON("loans/1988.json", flatten = TRUE))
loans1988$partner_id <- loans1988$loans.partner_id

loans.sorted1988 <- loans1988[order(loans1988$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total1988 <- merge(loans.sorted1988, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite1988 <- as.data.frame(merge(total1988,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite1988 <- unite1988[ , !(names(unite1988) %in% drops1)]
ncol(unite1988)
colnames(unite1988)

## RENAME SOCIAL PERFORMANCE

names(unite1988)[names(unite1988)=="Antipoverty"] <- "Antipoverty"
names(unite1988)[names(unite1988)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite1988)[names(unite1988)=="Client Voice"] <- "Client_Voice"
names(unite1988)[names(unite1988)=="Family and Community"] <- "Family_Community"
names(unite1988)[names(unite1988)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite1988)[names(unite1988)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite1988)[names(unite1988)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite1988[c("loans.delinquent")][is.na(unite1988[c("loans.delinquent")])] <- FALSE

#UNITE

unite_1988 <- rbind(unite_1989, unite1988)


## CHECK DATES

unite_1988$loans.funded_date <- as.Date(unite_1988$loans.funded_date)
unite_1988_sorted <- unite_1988[order(unite_1988$loans.funded_date),]
summary(unite_1988_sorted$loans.funded_date)
mean(unite_1988$loans.loan_amount)
sd(unite_1988$loans.loan_amount)

## 1987

loans1987 <- as.data.frame(fromJSON("loans/1987.json", flatten = TRUE))
loans1987$partner_id <- loans1987$loans.partner_id

loans.sorted1987 <- loans1987[order(loans1987$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total1987 <- merge(loans.sorted1987, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite1987 <- as.data.frame(merge(total1987,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite1987 <- unite1987[ , !(names(unite1987) %in% drops1)]
ncol(unite1987)
colnames(unite1987)

## RENAME SOCIAL PERFORMANCE

names(unite1987)[names(unite1987)=="Antipoverty"] <- "Antipoverty"
names(unite1987)[names(unite1987)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite1987)[names(unite1987)=="Client Voice"] <- "Client_Voice"
names(unite1987)[names(unite1987)=="Family and Community"] <- "Family_Community"
names(unite1987)[names(unite1987)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite1987)[names(unite1987)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite1987)[names(unite1987)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite1987[c("loans.delinquent")][is.na(unite1987[c("loans.delinquent")])] <- FALSE

#UNITE

unite_1987 <- rbind(unite_1988, unite1987)


## CHECK DATES

unite_1987$loans.funded_date <- as.Date(unite_1987$loans.funded_date)
unite_1987_sorted <- unite_1987[order(unite_1987$loans.funded_date),]
summary(unite_1987_sorted$loans.funded_date)
mean(unite_1987$loans.loan_amount)
sd(unite_1987$loans.loan_amount)

## 1986

loans1986 <- as.data.frame(fromJSON("loans/1986.json", flatten = TRUE))
loans1986$partner_id <- loans1986$loans.partner_id

loans.sorted1986 <- loans1986[order(loans1986$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total1986 <- merge(loans.sorted1986, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite1986 <- as.data.frame(merge(total1986,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite1986 <- unite1986[ , !(names(unite1986) %in% drops1)]
ncol(unite1986)
colnames(unite1986)

## RENAME SOCIAL PERFORMANCE

names(unite1986)[names(unite1986)=="Antipoverty"] <- "Antipoverty"
names(unite1986)[names(unite1986)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite1986)[names(unite1986)=="Client Voice"] <- "Client_Voice"
names(unite1986)[names(unite1986)=="Family and Community"] <- "Family_Community"
names(unite1986)[names(unite1986)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite1986)[names(unite1986)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite1986)[names(unite1986)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite1986[c("loans.delinquent")][is.na(unite1986[c("loans.delinquent")])] <- FALSE

#UNITE

unite_1986 <- rbind(unite_1987, unite1986)


## CHECK DATES

unite_1986$loans.funded_date <- as.Date(unite_1986$loans.funded_date)
unite_1986_sorted <- unite_1986[order(unite_1986$loans.funded_date),]
summary(unite_1986_sorted$loans.funded_date)
mean(unite_1986$loans.loan_amount)
sd(unite_1986$loans.loan_amount)

## 1985

loans1985 <- as.data.frame(fromJSON("loans/1985.json", flatten = TRUE))
loans1985$partner_id <- loans1985$loans.partner_id

loans.sorted1985 <- loans1985[order(loans1985$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total1985 <- merge(loans.sorted1985, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite1985 <- as.data.frame(merge(total1985,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite1985 <- unite1985[ , !(names(unite1985) %in% drops1)]
ncol(unite1985)
colnames(unite1985)

## RENAME SOCIAL PERFORMANCE

names(unite1985)[names(unite1985)=="Antipoverty"] <- "Antipoverty"
names(unite1985)[names(unite1985)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite1985)[names(unite1985)=="Client Voice"] <- "Client_Voice"
names(unite1985)[names(unite1985)=="Family and Community"] <- "Family_Community"
names(unite1985)[names(unite1985)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite1985)[names(unite1985)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite1985)[names(unite1985)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite1985[c("loans.delinquent")][is.na(unite1985[c("loans.delinquent")])] <- FALSE

#UNITE

unite_1985 <- rbind(unite_1986, unite1985)
ncol(unite_1985)


## CHECK DATES

unite_1985$loans.funded_date <- as.Date(unite_1985$loans.funded_date)
unite_1985_sorted <- unite_1985[order(unite_1985$loans.funded_date),]
summary(unite_1985_sorted$loans.funded_date)
mean(unite_1985$loans.loan_amount)
sd(unite_1985$loans.loan_amount)

## 1984

loans1984 <- as.data.frame(fromJSON("loans/1984.json", flatten = TRUE))
loans1984$partner_id <- loans1984$loans.partner_id

loans.sorted1984 <- loans1984[order(loans1984$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total1984 <- merge(loans.sorted1984, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite1984 <- as.data.frame(merge(total1984,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite1984 <- unite1984[ , !(names(unite1984) %in% drops1)]
ncol(unite1984)
colnames(unite1984)

## RENAME SOCIAL PERFORMANCE

names(unite1984)[names(unite1984)=="Antipoverty"] <- "Antipoverty"
names(unite1984)[names(unite1984)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite1984)[names(unite1984)=="Client Voice"] <- "Client_Voice"
names(unite1984)[names(unite1984)=="Family and Community"] <- "Family_Community"
names(unite1984)[names(unite1984)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite1984)[names(unite1984)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite1984)[names(unite1984)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite1984[c("loans.delinquent")][is.na(unite1984[c("loans.delinquent")])] <- FALSE

#UNITE

unite_1984 <- rbind(unite_1985, unite1984)
ncol(unite_1984)

## 1983

loans1983 <- as.data.frame(fromJSON("loans/1983.json", flatten = TRUE))
loans1983$partner_id <- loans1983$loans.partner_id

loans.sorted1983 <- loans1983[order(loans1983$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total1983 <- merge(loans.sorted1983, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite1983 <- as.data.frame(merge(total1983,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite1983 <- unite1983[ , !(names(unite1983) %in% drops1)]
ncol(unite1983)
colnames(unite1983)

## RENAME SOCIAL PERFORMANCE

names(unite1983)[names(unite1983)=="Antipoverty"] <- "Antipoverty"
names(unite1983)[names(unite1983)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite1983)[names(unite1983)=="Client Voice"] <- "Client_Voice"
names(unite1983)[names(unite1983)=="Family and Community"] <- "Family_Community"
names(unite1983)[names(unite1983)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite1983)[names(unite1983)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite1983)[names(unite1983)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite1983[c("loans.delinquent")][is.na(unite1983[c("loans.delinquent")])] <- FALSE

#UNITE

unite_1983 <- rbind(unite_1984, unite1983)
ncol(unite_1983)

## 1982

loans1982 <- as.data.frame(fromJSON("loans/1982.json", flatten = TRUE))
loans1982$partner_id <- loans1982$loans.partner_id

loans.sorted1982 <- loans1982[order(loans1982$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total1982 <- merge(loans.sorted1982, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite1982 <- as.data.frame(merge(total1982,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite1982 <- unite1982[ , !(names(unite1982) %in% drops1)]
ncol(unite1982)
colnames(unite1982)

## RENAME SOCIAL PERFORMANCE

names(unite1982)[names(unite1982)=="Antipoverty"] <- "Antipoverty"
names(unite1982)[names(unite1982)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite1982)[names(unite1982)=="Client Voice"] <- "Client_Voice"
names(unite1982)[names(unite1982)=="Family and Community"] <- "Family_Community"
names(unite1982)[names(unite1982)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite1982)[names(unite1982)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite1982)[names(unite1982)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite1982[c("loans.delinquent")][is.na(unite1982[c("loans.delinquent")])] <- FALSE

#UNITE

unite_1982 <- rbind(unite_1983, unite1982)
ncol(unite_1982)

## 1981

loans1981 <- as.data.frame(fromJSON("loans/1981.json", flatten = TRUE))
loans1981$partner_id <- loans1981$loans.partner_id

loans.sorted1981 <- loans1981[order(loans1981$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total1981 <- merge(loans.sorted1981, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite1981 <- as.data.frame(merge(total1981,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite1981 <- unite1981[ , !(names(unite1981) %in% drops1)]
ncol(unite1981)
colnames(unite1981)

## RENAME SOCIAL PERFORMANCE

names(unite1981)[names(unite1981)=="Antipoverty"] <- "Antipoverty"
names(unite1981)[names(unite1981)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite1981)[names(unite1981)=="Client Voice"] <- "Client_Voice"
names(unite1981)[names(unite1981)=="Family and Community"] <- "Family_Community"
names(unite1981)[names(unite1981)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite1981)[names(unite1981)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite1981)[names(unite1981)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite1981[c("loans.delinquent")][is.na(unite1981[c("loans.delinquent")])] <- FALSE

#UNITE

unite_1981 <- rbind(unite_1982, unite1981)
ncol(unite_1981)

## 1980

loans1980 <- as.data.frame(fromJSON("loans/1980.json", flatten = TRUE))
loans1980$partner_id <- loans1980$loans.partner_id

loans.sorted1980 <- loans1980[order(loans1980$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total1980 <- merge(loans.sorted1980, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite1980 <- as.data.frame(merge(total1980,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite1980 <- unite1980[ , !(names(unite1980) %in% drops1)]
ncol(unite1980)
colnames(unite1980)

## RENAME SOCIAL PERFORMANCE

names(unite1980)[names(unite1980)=="Antipoverty"] <- "Antipoverty"
names(unite1980)[names(unite1980)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite1980)[names(unite1980)=="Client Voice"] <- "Client_Voice"
names(unite1980)[names(unite1980)=="Family and Community"] <- "Family_Community"
names(unite1980)[names(unite1980)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite1980)[names(unite1980)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite1980)[names(unite1980)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite1980[c("loans.delinquent")][is.na(unite1980[c("loans.delinquent")])] <- FALSE

#UNITE

unite_1980 <- rbind(unite_1981, unite1980)
ncol(unite_1980)

## 1979

loans1979 <- as.data.frame(fromJSON("loans/1979.json", flatten = TRUE))
loans1979$partner_id <- loans1979$loans.partner_id

loans.sorted1979 <- loans1979[order(loans1979$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total1979 <- merge(loans.sorted1979, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite1979 <- as.data.frame(merge(total1979,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite1979 <- unite1979[ , !(names(unite1979) %in% drops1)]
ncol(unite1979)
colnames(unite1979)

## RENAME SOCIAL PERFORMANCE

names(unite1979)[names(unite1979)=="Antipoverty"] <- "Antipoverty"
names(unite1979)[names(unite1979)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite1979)[names(unite1979)=="Client Voice"] <- "Client_Voice"
names(unite1979)[names(unite1979)=="Family and Community"] <- "Family_Community"
names(unite1979)[names(unite1979)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite1979)[names(unite1979)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite1979)[names(unite1979)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite1979[c("loans.delinquent")][is.na(unite1979[c("loans.delinquent")])] <- FALSE

#UNITE

unite_1979 <- rbind(unite_1980, unite1979)
ncol(unite_1979)

## 1978

loans1978 <- as.data.frame(fromJSON("loans/1978.json", flatten = TRUE))
loans1978$partner_id <- loans1978$loans.partner_id

loans.sorted1978 <- loans1978[order(loans1978$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total1978 <- merge(loans.sorted1978, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite1978 <- as.data.frame(merge(total1978,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite1978 <- unite1978[ , !(names(unite1978) %in% drops1)]
ncol(unite1978)
colnames(unite1978)

## RENAME SOCIAL PERFORMANCE

names(unite1978)[names(unite1978)=="Antipoverty"] <- "Antipoverty"
names(unite1978)[names(unite1978)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite1978)[names(unite1978)=="Client Voice"] <- "Client_Voice"
names(unite1978)[names(unite1978)=="Family and Community"] <- "Family_Community"
names(unite1978)[names(unite1978)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite1978)[names(unite1978)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite1978)[names(unite1978)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite1978[c("loans.delinquent")][is.na(unite1978[c("loans.delinquent")])] <- FALSE

#UNITE

unite_1978 <- rbind(unite_1979, unite1978)

## 1977

loans1977 <- as.data.frame(fromJSON("loans/1977.json", flatten = TRUE))
loans1977$partner_id <- loans1977$loans.partner_id

loans.sorted1977 <- loans1977[order(loans1977$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total1977 <- merge(loans.sorted1977, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite1977 <- as.data.frame(merge(total1977,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite1977 <- unite1977[ , !(names(unite1977) %in% drops1)]
ncol(unite1977)
colnames(unite1977)

## RENAME SOCIAL PERFORMANCE

names(unite1977)[names(unite1977)=="Antipoverty"] <- "Antipoverty"
names(unite1977)[names(unite1977)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite1977)[names(unite1977)=="Client Voice"] <- "Client_Voice"
names(unite1977)[names(unite1977)=="Family and Community"] <- "Family_Community"
names(unite1977)[names(unite1977)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite1977)[names(unite1977)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite1977)[names(unite1977)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite1977[c("loans.delinquent")][is.na(unite1977[c("loans.delinquent")])] <- FALSE

#UNITE

unite_1977 <- rbind(unite_1978, unite1977)

## 1976

loans1976 <- as.data.frame(fromJSON("loans/1976.json", flatten = TRUE))
loans1976$partner_id <- loans1976$loans.partner_id

loans.sorted1976 <- loans1976[order(loans1976$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total1976 <- merge(loans.sorted1976, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite1976 <- as.data.frame(merge(total1976,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite1976 <- unite1976[ , !(names(unite1976) %in% drops1)]
ncol(unite1976)
colnames(unite1976)

## RENAME SOCIAL PERFORMANCE

names(unite1976)[names(unite1976)=="Antipoverty"] <- "Antipoverty"
names(unite1976)[names(unite1976)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite1976)[names(unite1976)=="Client Voice"] <- "Client_Voice"
names(unite1976)[names(unite1976)=="Family and Community"] <- "Family_Community"
names(unite1976)[names(unite1976)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite1976)[names(unite1976)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite1976)[names(unite1976)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite1976[c("loans.delinquent")][is.na(unite1976[c("loans.delinquent")])] <- FALSE

#UNITE

unite_1976 <- rbind(unite_1977, unite1976)

## 1975

loans1975 <- as.data.frame(fromJSON("loans/1975.json", flatten = TRUE))
loans1975$partner_id <- loans1975$loans.partner_id

loans.sorted1975 <- loans1975[order(loans1975$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total1975 <- merge(loans.sorted1975, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite1975 <- as.data.frame(merge(total1975,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite1975 <- unite1975[ , !(names(unite1975) %in% drops1)]
ncol(unite1975)
colnames(unite1975)

## RENAME SOCIAL PERFORMANCE

names(unite1975)[names(unite1975)=="Antipoverty"] <- "Antipoverty"
names(unite1975)[names(unite1975)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite1975)[names(unite1975)=="Client Voice"] <- "Client_Voice"
names(unite1975)[names(unite1975)=="Family and Community"] <- "Family_Community"
names(unite1975)[names(unite1975)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite1975)[names(unite1975)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite1975)[names(unite1975)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite1975[c("loans.delinquent")][is.na(unite1975[c("loans.delinquent")])] <- FALSE

#UNITE

unite_1975 <- rbind(unite_1976, unite1975)

## 1974

loans1974 <- as.data.frame(fromJSON("loans/1974.json", flatten = TRUE))
loans1974$partner_id <- loans1974$loans.partner_id

loans.sorted1974 <- loans1974[order(loans1974$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total1974 <- merge(loans.sorted1974, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite1974 <- as.data.frame(merge(total1974,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite1974 <- unite1974[ , !(names(unite1974) %in% drops1)]
ncol(unite1974)
colnames(unite1974)

## RENAME SOCIAL PERFORMANCE

names(unite1974)[names(unite1974)=="Antipoverty"] <- "Antipoverty"
names(unite1974)[names(unite1974)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite1974)[names(unite1974)=="Client Voice"] <- "Client_Voice"
names(unite1974)[names(unite1974)=="Family and Community"] <- "Family_Community"
names(unite1974)[names(unite1974)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite1974)[names(unite1974)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite1974)[names(unite1974)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite1974[c("loans.delinquent")][is.na(unite1974[c("loans.delinquent")])] <- FALSE

#UNITE

unite_1974 <- rbind(unite_1975, unite1974)

## 1973

loans1973 <- as.data.frame(fromJSON("loans/1973.json", flatten = TRUE))
loans1973$partner_id <- loans1973$loans.partner_id

loans.sorted1973 <- loans1973[order(loans1973$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total1973 <- merge(loans.sorted1973, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite1973 <- as.data.frame(merge(total1973,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite1973 <- unite1973[ , !(names(unite1973) %in% drops1)]
ncol(unite1973)
colnames(unite1973)

## RENAME SOCIAL PERFORMANCE

names(unite1973)[names(unite1973)=="Antipoverty"] <- "Antipoverty"
names(unite1973)[names(unite1973)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite1973)[names(unite1973)=="Client Voice"] <- "Client_Voice"
names(unite1973)[names(unite1973)=="Family and Community"] <- "Family_Community"
names(unite1973)[names(unite1973)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite1973)[names(unite1973)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite1973)[names(unite1973)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite1973[c("loans.delinquent")][is.na(unite1973[c("loans.delinquent")])] <- FALSE

#UNITE

unite_1973 <- rbind(unite_1974, unite1973)

## 1972

loans1972 <- as.data.frame(fromJSON("loans/1972.json", flatten = TRUE))
loans1972$partner_id <- loans1972$loans.partner_id

loans.sorted1972 <- loans1972[order(loans1972$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total1972 <- merge(loans.sorted1972, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite1972 <- as.data.frame(merge(total1972,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite1972 <- unite1972[ , !(names(unite1972) %in% drops1)]
ncol(unite1972)
colnames(unite1972)

## RENAME SOCIAL PERFORMANCE

names(unite1972)[names(unite1972)=="Antipoverty"] <- "Antipoverty"
names(unite1972)[names(unite1972)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite1972)[names(unite1972)=="Client Voice"] <- "Client_Voice"
names(unite1972)[names(unite1972)=="Family and Community"] <- "Family_Community"
names(unite1972)[names(unite1972)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite1972)[names(unite1972)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite1972)[names(unite1972)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite1972[c("loans.delinquent")][is.na(unite1972[c("loans.delinquent")])] <- FALSE

#UNITE

unite_1972 <- rbind(unite_1973, unite1972)

## 1971

loans1971 <- as.data.frame(fromJSON("loans/1971.json", flatten = TRUE))
loans1971$partner_id <- loans1971$loans.partner_id

loans.sorted1971 <- loans1971[order(loans1971$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total1971 <- merge(loans.sorted1971, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite1971 <- as.data.frame(merge(total1971,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite1971 <- unite1971[ , !(names(unite1971) %in% drops1)]
ncol(unite1971)
colnames(unite1971)

## RENAME SOCIAL PERFORMANCE

names(unite1971)[names(unite1971)=="Antipoverty"] <- "Antipoverty"
names(unite1971)[names(unite1971)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite1971)[names(unite1971)=="Client Voice"] <- "Client_Voice"
names(unite1971)[names(unite1971)=="Family and Community"] <- "Family_Community"
names(unite1971)[names(unite1971)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite1971)[names(unite1971)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite1971)[names(unite1971)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite1971[c("loans.delinquent")][is.na(unite1971[c("loans.delinquent")])] <- FALSE

#UNITE

unite_1971 <- rbind(unite_1972, unite1971)

## 1970

loans1970 <- as.data.frame(fromJSON("loans/1970.json", flatten = TRUE))
loans1970$partner_id <- loans1970$loans.partner_id

loans.sorted1970 <- loans1970[order(loans1970$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total1970 <- merge(loans.sorted1970, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite1970 <- as.data.frame(merge(total1970,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite1970 <- unite1970[ , !(names(unite1970) %in% drops1)]
ncol(unite1970)
colnames(unite1970)

## RENAME SOCIAL PERFORMANCE

names(unite1970)[names(unite1970)=="Antipoverty"] <- "Antipoverty"
names(unite1970)[names(unite1970)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite1970)[names(unite1970)=="Client Voice"] <- "Client_Voice"
names(unite1970)[names(unite1970)=="Family and Community"] <- "Family_Community"
names(unite1970)[names(unite1970)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite1970)[names(unite1970)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite1970)[names(unite1970)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite1970[c("loans.delinquent")][is.na(unite1970[c("loans.delinquent")])] <- FALSE

#UNITE

unite_1970 <- rbind(unite_1971, unite1970)

## 1969

loans1969 <- as.data.frame(fromJSON("loans/1969.json", flatten = TRUE))
loans1969$partner_id <- loans1969$loans.partner_id

loans.sorted1969 <- loans1969[order(loans1969$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total1969 <- merge(loans.sorted1969, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite1969 <- as.data.frame(merge(total1969,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite1969 <- unite1969[ , !(names(unite1969) %in% drops1)]
ncol(unite1969)
colnames(unite1969)

## RENAME SOCIAL PERFORMANCE

names(unite1969)[names(unite1969)=="Antipoverty"] <- "Antipoverty"
names(unite1969)[names(unite1969)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite1969)[names(unite1969)=="Client Voice"] <- "Client_Voice"
names(unite1969)[names(unite1969)=="Family and Community"] <- "Family_Community"
names(unite1969)[names(unite1969)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite1969)[names(unite1969)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite1969)[names(unite1969)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite1969[c("loans.delinquent")][is.na(unite1969[c("loans.delinquent")])] <- FALSE

#UNITE

unite_1969 <- rbind(unite_1970, unite1969)

## 1968

loans1968 <- as.data.frame(fromJSON("loans/1968.json", flatten = TRUE))
loans1968$partner_id <- loans1968$loans.partner_id

loans.sorted1968 <- loans1968[order(loans1968$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total1968 <- merge(loans.sorted1968, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite1968 <- as.data.frame(merge(total1968,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite1968 <- unite1968[ , !(names(unite1968) %in% drops1)]
ncol(unite1968)
colnames(unite1968)

## RENAME SOCIAL PERFORMANCE

names(unite1968)[names(unite1968)=="Antipoverty"] <- "Antipoverty"
names(unite1968)[names(unite1968)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite1968)[names(unite1968)=="Client Voice"] <- "Client_Voice"
names(unite1968)[names(unite1968)=="Family and Community"] <- "Family_Community"
names(unite1968)[names(unite1968)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite1968)[names(unite1968)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite1968)[names(unite1968)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite1968[c("loans.delinquent")][is.na(unite1968[c("loans.delinquent")])] <- FALSE

#UNITE

unite_1968 <- rbind(unite_1969, unite1968)

## 1967

loans1967 <- as.data.frame(fromJSON("loans/1967.json", flatten = TRUE))
loans1967$partner_id <- loans1967$loans.partner_id

loans.sorted1967 <- loans1967[order(loans1967$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total1967 <- merge(loans.sorted1967, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite1967 <- as.data.frame(merge(total1967,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite1967 <- unite1967[ , !(names(unite1967) %in% drops1)]
ncol(unite1967)
colnames(unite1967)

## RENAME SOCIAL PERFORMANCE

names(unite1967)[names(unite1967)=="Antipoverty"] <- "Antipoverty"
names(unite1967)[names(unite1967)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite1967)[names(unite1967)=="Client Voice"] <- "Client_Voice"
names(unite1967)[names(unite1967)=="Family and Community"] <- "Family_Community"
names(unite1967)[names(unite1967)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite1967)[names(unite1967)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite1967)[names(unite1967)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite1967[c("loans.delinquent")][is.na(unite1967[c("loans.delinquent")])] <- FALSE

#UNITE

unite_1967 <- rbind(unite_1968, unite1967)

## 1966

loans1966 <- as.data.frame(fromJSON("loans/1966.json", flatten = TRUE))
loans1966$partner_id <- loans1966$loans.partner_id

loans.sorted1966 <- loans1966[order(loans1966$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total1966 <- merge(loans.sorted1966, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite1966 <- as.data.frame(merge(total1966,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite1966 <- unite1966[ , !(names(unite1966) %in% drops1)]
ncol(unite1966)
colnames(unite1966)

## RENAME SOCIAL PERFORMANCE

names(unite1966)[names(unite1966)=="Antipoverty"] <- "Antipoverty"
names(unite1966)[names(unite1966)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite1966)[names(unite1966)=="Client Voice"] <- "Client_Voice"
names(unite1966)[names(unite1966)=="Family and Community"] <- "Family_Community"
names(unite1966)[names(unite1966)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite1966)[names(unite1966)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite1966)[names(unite1966)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite1966[c("loans.delinquent")][is.na(unite1966[c("loans.delinquent")])] <- FALSE

#UNITE

unite_1966 <- rbind(unite_1967, unite1966)

## 1965

loans1965 <- as.data.frame(fromJSON("loans/1965.json", flatten = TRUE))
loans1965$partner_id <- loans1965$loans.partner_id

loans.sorted1965 <- loans1965[order(loans1965$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total1965 <- merge(loans.sorted1965, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite1965 <- as.data.frame(merge(total1965,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite1965 <- unite1965[ , !(names(unite1965) %in% drops1)]
ncol(unite1965)
colnames(unite1965)

## RENAME SOCIAL PERFORMANCE

names(unite1965)[names(unite1965)=="Antipoverty"] <- "Antipoverty"
names(unite1965)[names(unite1965)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite1965)[names(unite1965)=="Client Voice"] <- "Client_Voice"
names(unite1965)[names(unite1965)=="Family and Community"] <- "Family_Community"
names(unite1965)[names(unite1965)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite1965)[names(unite1965)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite1965)[names(unite1965)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite1965[c("loans.delinquent")][is.na(unite1965[c("loans.delinquent")])] <- FALSE

#UNITE

unite_1965 <- rbind(unite_1966, unite1965)

## 1964

loans1964 <- as.data.frame(fromJSON("loans/1964.json", flatten = TRUE))
loans1964$partner_id <- loans1964$loans.partner_id

loans.sorted1964 <- loans1964[order(loans1964$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total1964 <- merge(loans.sorted1964, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite1964 <- as.data.frame(merge(total1964,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite1964 <- unite1964[ , !(names(unite1964) %in% drops1)]
ncol(unite1964)
colnames(unite1964)

## RENAME SOCIAL PERFORMANCE

names(unite1964)[names(unite1964)=="Antipoverty"] <- "Antipoverty"
names(unite1964)[names(unite1964)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite1964)[names(unite1964)=="Client Voice"] <- "Client_Voice"
names(unite1964)[names(unite1964)=="Family and Community"] <- "Family_Community"
names(unite1964)[names(unite1964)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite1964)[names(unite1964)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite1964)[names(unite1964)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite1964[c("loans.delinquent")][is.na(unite1964[c("loans.delinquent")])] <- FALSE

#UNITE

unite_1964 <- rbind(unite_1965, unite1964)

## 1963

loans1963 <- as.data.frame(fromJSON("loans/1963.json", flatten = TRUE))
loans1963$partner_id <- loans1963$loans.partner_id

loans.sorted1963 <- loans1963[order(loans1963$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total1963 <- merge(loans.sorted1963, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite1963 <- as.data.frame(merge(total1963,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite1963 <- unite1963[ , !(names(unite1963) %in% drops1)]
ncol(unite1963)
colnames(unite1963)

## RENAME SOCIAL PERFORMANCE

names(unite1963)[names(unite1963)=="Antipoverty"] <- "Antipoverty"
names(unite1963)[names(unite1963)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite1963)[names(unite1963)=="Client Voice"] <- "Client_Voice"
names(unite1963)[names(unite1963)=="Family and Community"] <- "Family_Community"
names(unite1963)[names(unite1963)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite1963)[names(unite1963)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite1963)[names(unite1963)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite1963[c("loans.delinquent")][is.na(unite1963[c("loans.delinquent")])] <- FALSE

#UNITE

unite_1963 <- rbind(unite_1964, unite1963)

## 1962

loans1962 <- as.data.frame(fromJSON("loans/1962.json", flatten = TRUE))
loans1962$partner_id <- loans1962$loans.partner_id

loans.sorted1962 <- loans1962[order(loans1962$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total1962 <- merge(loans.sorted1962, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite1962 <- as.data.frame(merge(total1962,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite1962 <- unite1962[ , !(names(unite1962) %in% drops1)]
ncol(unite1962)
colnames(unite1962)

## RENAME SOCIAL PERFORMANCE

names(unite1962)[names(unite1962)=="Antipoverty"] <- "Antipoverty"
names(unite1962)[names(unite1962)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite1962)[names(unite1962)=="Client Voice"] <- "Client_Voice"
names(unite1962)[names(unite1962)=="Family and Community"] <- "Family_Community"
names(unite1962)[names(unite1962)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite1962)[names(unite1962)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite1962)[names(unite1962)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite1962[c("loans.delinquent")][is.na(unite1962[c("loans.delinquent")])] <- FALSE

#UNITE

unite_1962 <- rbind(unite_1963, unite1962)

## 1961

loans1961 <- as.data.frame(fromJSON("loans/1961.json", flatten = TRUE))
loans1961$partner_id <- loans1961$loans.partner_id

loans.sorted1961 <- loans1961[order(loans1961$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total1961 <- merge(loans.sorted1961, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite1961 <- as.data.frame(merge(total1961,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite1961 <- unite1961[ , !(names(unite1961) %in% drops1)]
ncol(unite1961)
colnames(unite1961)

## RENAME SOCIAL PERFORMANCE

names(unite1961)[names(unite1961)=="Antipoverty"] <- "Antipoverty"
names(unite1961)[names(unite1961)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite1961)[names(unite1961)=="Client Voice"] <- "Client_Voice"
names(unite1961)[names(unite1961)=="Family and Community"] <- "Family_Community"
names(unite1961)[names(unite1961)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite1961)[names(unite1961)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite1961)[names(unite1961)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite1961[c("loans.delinquent")][is.na(unite1961[c("loans.delinquent")])] <- FALSE

#UNITE

unite_1961 <- rbind(unite_1962, unite1961)

## 1960

loans1960 <- as.data.frame(fromJSON("loans/1960.json", flatten = TRUE))
loans1960$partner_id <- loans1960$loans.partner_id

loans.sorted1960 <- loans1960[order(loans1960$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total1960 <- merge(loans.sorted1960, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite1960 <- as.data.frame(merge(total1960,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite1960 <- unite1960[ , !(names(unite1960) %in% drops1)]
ncol(unite1960)
colnames(unite1960)

## RENAME SOCIAL PERFORMANCE

names(unite1960)[names(unite1960)=="Antipoverty"] <- "Antipoverty"
names(unite1960)[names(unite1960)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite1960)[names(unite1960)=="Client Voice"] <- "Client_Voice"
names(unite1960)[names(unite1960)=="Family and Community"] <- "Family_Community"
names(unite1960)[names(unite1960)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite1960)[names(unite1960)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite1960)[names(unite1960)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite1960[c("loans.delinquent")][is.na(unite1960[c("loans.delinquent")])] <- FALSE

#UNITE

unite_1960 <- rbind(unite_1961, unite1960)

## 1959

loans1959 <- as.data.frame(fromJSON("loans/1959.json", flatten = TRUE))
loans1959$partner_id <- loans1959$loans.partner_id

loans.sorted1959 <- loans1959[order(loans1959$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total1959 <- merge(loans.sorted1959, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite1959 <- as.data.frame(merge(total1959,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite1959 <- unite1959[ , !(names(unite1959) %in% drops1)]
ncol(unite1959)
colnames(unite1959)

## RENAME SOCIAL PERFORMANCE

names(unite1959)[names(unite1959)=="Antipoverty"] <- "Antipoverty"
names(unite1959)[names(unite1959)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite1959)[names(unite1959)=="Client Voice"] <- "Client_Voice"
names(unite1959)[names(unite1959)=="Family and Community"] <- "Family_Community"
names(unite1959)[names(unite1959)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite1959)[names(unite1959)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite1959)[names(unite1959)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite1959[c("loans.delinquent")][is.na(unite1959[c("loans.delinquent")])] <- FALSE

#UNITE

unite_1959 <- rbind(unite_1960, unite1959)

## 1958

loans1958 <- as.data.frame(fromJSON("loans/1958.json", flatten = TRUE))
loans1958$partner_id <- loans1958$loans.partner_id

loans.sorted1958 <- loans1958[order(loans1958$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total1958 <- merge(loans.sorted1958, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite1958 <- as.data.frame(merge(total1958,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite1958 <- unite1958[ , !(names(unite1958) %in% drops1)]
ncol(unite1958)
colnames(unite1958)

## RENAME SOCIAL PERFORMANCE

names(unite1958)[names(unite1958)=="Antipoverty"] <- "Antipoverty"
names(unite1958)[names(unite1958)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite1958)[names(unite1958)=="Client Voice"] <- "Client_Voice"
names(unite1958)[names(unite1958)=="Family and Community"] <- "Family_Community"
names(unite1958)[names(unite1958)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite1958)[names(unite1958)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite1958)[names(unite1958)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite1958[c("loans.delinquent")][is.na(unite1958[c("loans.delinquent")])] <- FALSE

#UNITE

unite_1958 <- rbind(unite_1959, unite1958)

## 1957

loans1957 <- as.data.frame(fromJSON("loans/1957.json", flatten = TRUE))
loans1957$partner_id <- loans1957$loans.partner_id

loans.sorted1957 <- loans1957[order(loans1957$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total1957 <- merge(loans.sorted1957, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite1957 <- as.data.frame(merge(total1957,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite1957 <- unite1957[ , !(names(unite1957) %in% drops1)]
ncol(unite1957)
colnames(unite1957)

## RENAME SOCIAL PERFORMANCE

names(unite1957)[names(unite1957)=="Antipoverty"] <- "Antipoverty"
names(unite1957)[names(unite1957)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite1957)[names(unite1957)=="Client Voice"] <- "Client_Voice"
names(unite1957)[names(unite1957)=="Family and Community"] <- "Family_Community"
names(unite1957)[names(unite1957)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite1957)[names(unite1957)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite1957)[names(unite1957)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite1957[c("loans.delinquent")][is.na(unite1957[c("loans.delinquent")])] <- FALSE

#UNITE

unite_1957 <- rbind(unite_1958, unite1957)

## 1956

loans1956 <- as.data.frame(fromJSON("loans/1956.json", flatten = TRUE))
loans1956$partner_id <- loans1956$loans.partner_id

loans.sorted1956 <- loans1956[order(loans1956$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total1956 <- merge(loans.sorted1956, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite1956 <- as.data.frame(merge(total1956,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite1956 <- unite1956[ , !(names(unite1956) %in% drops1)]
ncol(unite1956)
colnames(unite1956)

## RENAME SOCIAL PERFORMANCE

names(unite1956)[names(unite1956)=="Antipoverty"] <- "Antipoverty"
names(unite1956)[names(unite1956)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite1956)[names(unite1956)=="Client Voice"] <- "Client_Voice"
names(unite1956)[names(unite1956)=="Family and Community"] <- "Family_Community"
names(unite1956)[names(unite1956)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite1956)[names(unite1956)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite1956)[names(unite1956)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite1956[c("loans.delinquent")][is.na(unite1956[c("loans.delinquent")])] <- FALSE

#UNITE

unite_1956 <- rbind(unite_1957, unite1956)

## 1955

loans1955 <- as.data.frame(fromJSON("loans/1955.json", flatten = TRUE))
loans1955$partner_id <- loans1955$loans.partner_id

loans.sorted1955 <- loans1955[order(loans1955$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total1955 <- merge(loans.sorted1955, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite1955 <- as.data.frame(merge(total1955,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite1955 <- unite1955[ , !(names(unite1955) %in% drops1)]
ncol(unite1955)
colnames(unite1955)

## RENAME SOCIAL PERFORMANCE

names(unite1955)[names(unite1955)=="Antipoverty"] <- "Antipoverty"
names(unite1955)[names(unite1955)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite1955)[names(unite1955)=="Client Voice"] <- "Client_Voice"
names(unite1955)[names(unite1955)=="Family and Community"] <- "Family_Community"
names(unite1955)[names(unite1955)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite1955)[names(unite1955)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite1955)[names(unite1955)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite1955[c("loans.delinquent")][is.na(unite1955[c("loans.delinquent")])] <- FALSE

#UNITE

unite_1955 <- rbind(unite_1956, unite1955)

## 1954

loans1954 <- as.data.frame(fromJSON("loans/1954.json", flatten = TRUE))
loans1954$partner_id <- loans1954$loans.partner_id

loans.sorted1954 <- loans1954[order(loans1954$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total1954 <- merge(loans.sorted1954, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite1954 <- as.data.frame(merge(total1954,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite1954 <- unite1954[ , !(names(unite1954) %in% drops1)]
ncol(unite1954)
colnames(unite1954)

## RENAME SOCIAL PERFORMANCE

names(unite1954)[names(unite1954)=="Antipoverty"] <- "Antipoverty"
names(unite1954)[names(unite1954)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite1954)[names(unite1954)=="Client Voice"] <- "Client_Voice"
names(unite1954)[names(unite1954)=="Family and Community"] <- "Family_Community"
names(unite1954)[names(unite1954)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite1954)[names(unite1954)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite1954)[names(unite1954)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite1954[c("loans.delinquent")][is.na(unite1954[c("loans.delinquent")])] <- FALSE

#UNITE

unite_1954 <- rbind(unite_1955, unite1954)

## 1953

loans1953 <- as.data.frame(fromJSON("loans/1953.json", flatten = TRUE))
loans1953$partner_id <- loans1953$loans.partner_id

loans.sorted1953 <- loans1953[order(loans1953$partner_id),]

#merge sorted loans dataframe with partners' dataframe by partner id

total1953 <- merge(loans.sorted1953, partnersdf,by="partner_id")

#merge total table with information about social performance strenghts

unite1953 <- as.data.frame(merge(total1953,ids.df,by="partner_id"))

#now I have a dataframe with all informations about loans and information about the field partner including number and nature of
#social performance badges.

unite1953 <- unite1953[ , !(names(unite1953) %in% drops1)]
ncol(unite1953)
colnames(unite1953)

## RENAME SOCIAL PERFORMANCE

names(unite1953)[names(unite1953)=="Antipoverty"] <- "Antipoverty"
names(unite1953)[names(unite1953)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite1953)[names(unite1953)=="Client Voice"] <- "Client_Voice"
names(unite1953)[names(unite1953)=="Family and Community"] <- "Family_Community"
names(unite1953)[names(unite1953)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite1953)[names(unite1953)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite1953)[names(unite1953)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE

unite1953[c("loans.delinquent")][is.na(unite1953[c("loans.delinquent")])] <- FALSE

#UNITE

unite_1953 <- rbind(unite_1954, unite1953)

#ADJUSTMENTS
names <- as.data.frame(unlist(unite_1953$loans.name))
summary(names)
unite_1953$borrower_name <- names
names(unite1953)[names(unite1953)=="borrower_name"] <- "Borrower_name"
drop <- c("loans.name")
unite_1953 <- unite_1953[ , !(names(unite_1953) %in% drop)]
names(unite_1953)

final <- names(unite_1953)

Mode <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}
