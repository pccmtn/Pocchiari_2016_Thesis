## CLEANING DATA

# REMOVING COLUMNS I'M NOT GOING TO USE

drops1 <- c(##HEADER
  "header.total","header.page", "header.page_size", "header.date",
  ##IDS
  "loans.partner_id",
  ##BORROWERS
  "loans.borrowers",
  ##DESCRIPTIONS
  "loans.description.languages", "loans.description.texts.es", "loans.description.texts.fr", "loans.description.texts.ru", "loans.description.texts.pt",
  "loans.description.texts.id", "loans.description.texts.vi", "loans.description.texts.ar",
  ##BASKED AND PAID AMOUNTS
  "loans.basket_amount", "loans.paid_amount", "loans.paid_date", "loans.funded_date",
  "loans.funded_amount", #NAs #not going to analyze the borrowers' behaviour
  ##IMAGES AND VIDEOS
  "loans.image.id", "loans.image.template_id", "loans.video", "loans.video.id", "loans.video.youtubeId",
  "loans.video.title", "loans.video.thumbnailImageId", #not interested in presence of media
  ##ACTIVITY AND USE
  "loans.activity", "loans.use", "loans.themes", "loans.delinquent", #redundant with sector
  ##LOCATIONS
  "loans.location.town", "loans.location.geo.level", "loans.location.geo.type", "loans.location.country_code",
  "location.geo.pairs", "loans.location.country", #redundant with country
  ##OTHER INFO
  "loans.planned_expiration_date", "loans.currency_exchange_loss_amount","loans.tags", #NAs, #NAs 494
  ##TERMS
  "loans.terms.disbursal_date", "loans.terms.disbursal_currency", "loans.terms.disbursal_amount", "loans.terms.loan_amount", #equal to loan_amount 
  "loans.terms.local_payments", 
  "loans.terms.scheduled_payments", "loans.payments",
  "loans.terms.loss_liability.currency_exchange_coverage_rate",
  "loans.terms.loss_liability.currency_exchange", #all referred to the borrowers' behaviour
  ##TRANSLATORS AND JOURNALS
  "loans.translator.byline", "loans.translator.image", "loans.journal_totals.bulkEntries",
  ##PAGING
  "paging.page", "paging.total", "paging.page_size", "paging.pages",
  ##PARTNERS
  "partners.name", "partners.id", "partners.countries",
  "partners.delinquency_rate_note", "partners.default_rate_note", "partners.default_rate_note", "partners.portfolio_yield_note", "partners.url",
  "partners.image.id", "partners.image.template_id", "partners.currency_exchange_loss_rate", #notes and details
  ##SOCIAL PERFORMANCE
  "partners.social_performance_strengths", #redundant
  ## SCORE NEG
  "neg")

unite1 <- unite1[ , !(names(unite1) %in% drops1)]

## RENAME SOCIAL PERFORMANCE

names(unite1)[names(unite1)=="Antipoverty"] <- "Antipoverty"
names(unite1)[names(unite1)=="Vulnerable Group"] <- "Vulnerable_Group"
names(unite1)[names(unite1)=="Client Voice"] <- "Client_Voice"
names(unite1)[names(unite1)=="Family and Community"] <- "Family_Community"
names(unite1)[names(unite1)=="Enterpreneurial Support"] <- "Enterpreneurial_Support"
names(unite1)[names(unite1)=="Facilitation of Savings"] <- "Facilitation_Savings"
names(unite1)[names(unite1)=="Innovation"] <- "Innovation"

## ASSUME LOANS.DELINQUENT == NA IS EQUAL TO LOANS.DELINQUENT == FALSE
  
unite1[c("loans.delinquent")][is.na(unite1[c("loans.delinquent")])] <- FALSE


