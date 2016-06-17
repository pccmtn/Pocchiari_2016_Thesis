# some graphs of the date distribution

ggplot(copyDates, aes(x = loans.posted_date)) + 
  geom_density(fill = "#00ffcc", alpha = 0.4) + 
  scale_x_date(limits = (as.Date(c('2006-01-01','2012-12-31'))), date_breaks = "1 year",
               date_minor_breaks = "6 months") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1, size = 12, face = "bold")) +
  labs(x= "Project Posted Date", y = "Density", title = "Projects Posted Dates: Density Plot")

## CREATION OF DATASETS BEFORE AND AFTER DECEMBER 11, 2011.


oldies <- copyDates[(copyDates$loans.posted_date > "2004-01-01" & copyDates$loans.posted_date < "2011-12-10"),]
nrow(oldies)

#################################

recent <- copyDates[(copyDates$loans.posted_date < "2016-01-01" & copyDates$loans.posted_date > "2011-12-11"),]
nrow(recent)

# distribution of dates after Dec. 11, 2011

ggplot(recent, aes(x = loans.posted_date)) + 
  geom_density(fill = "#00ffcc", alpha = 0.4) + 
  scale_x_date(limits = (as.Date(c('2011-12-12','2012-02-04'))), date_breaks = "1 month", date_minor_breaks =  "1 day") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1, size = 12, face = "bold")) +
  labs(x= "Project Posted Date", y = "Density", title = "Recent Posted Dates: Density Plot")