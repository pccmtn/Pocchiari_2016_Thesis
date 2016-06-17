## SENTIMENT ANALYIS METHOD 2

final1 <- unite_1953[1:9000,]
final1_2 <- unite_1953[9001:9500,]
final1_3 <- unite_1953[9501:9710, ]
#betweet 9711 and 9999: recurring errors = rows dropped
final2 <- unite_1953[10000:18000,]
final3 <- unite_1953[18001:27000,]
final4 <- unite_1953[27001:36000,]
final5 <- unite_1953[36001:41777,]

txt1 <- unite_1953$loans.description.texts.en[1:9000]
txt1_2 <- unite_1953$loans.description.texts.en[9001:9500]
txt1_3 <- unite_1953$loans.description.texts.en[9501:9710]
txt2 = unite_1953$loans.description.texts.en[10000:18000]
txt3 = unite_1953$loans.description.texts.en[18001:27000]
txt4 = unite_1953$loans.description.texts.en[27001:36000]
txt5 = unite_1953$loans.description.texts.en[36001:41777]

# First we will remove symbol entities from the stored tweets (text)
txt1 = gsub("(<U+00E1>)((?:\\b\\W*@\\w+)+)", "", txt1)
txt1 = gsub("(<U+00F1>)((?:\\b\\W*@\\w+)+)", "", txt1)
txt1 = gsub("(\r\np\r\n)((?:\\b\\W*@\\w+)+)", "", txt1)

# Then remove all “@people”
txt1 = gsub("<U+00\\w+", "", txt1)
# Then remove all the punctuation
txt1 = gsub("[[:punct:]]", "", txt1)
# Then remove numbers, we need only text for analytics
txt1 = gsub("[[:digit:]]", "", txt1)
# the remove html links, which are not required for sentiment analysis
txt1 = gsub("http\\w+", "", txt1)
# finally, we remove unnecessary spaces (white spaces, tabs etc)
txt1 = gsub("[ \t]{2,}", "", txt1)
txt1 = gsub("^\\s+|\\s+$", "", txt1)
# if anything else, you feel, should be removed, you can. For example “slang words” etc using the above function and methods.

# Let us first define a function which can handle “tolower error handling”, if arises any, during converting all words in lower case.
catch.error = function(x)
{
  # let us create a missing value for test purpose
  y = NA
  # try to catch that error (NA) we just created
  catch_error = tryCatch(tolower(x), error=function(e) e)
  # if not an error
  if (!inherits(catch_error, "error"))
    y = tolower(x)
  # check result if error exists, otherwise the function works fine.
  return(y)
}

# Now we will transform all the words in lower case using catch.error function we just created above and with sapply function
txt1 = sapply(txt1, catch.error)

hu.liu.pos = scan('opinion-lexicon-English/positive_words.txt',
                  what='character', comment.char=';') 

hu.liu.neg = scan('opinion-lexicon-English/negative_words.txt',
                  what='character', comment.char=';')

pos.words = c(hu.liu.pos, 'improve', 'soon', 'hope', 'wish', 'management', 'morality', 'employed')
neg.words = c(hu.liu.neg, 'dependent', 'children', 'abuse', 'limited', 'polygamous', 'not care', 'unemployed')

tryTolower = function(x)
{
  # create missing value
  # this is where the returned value will be
  y = NA
  # tryCatch error
  try_error = tryCatch(tolower(x), error = function(e) e)
  # if not an error
  if (!inherits(try_error, "error"))
    y = tolower(x)
  return(y)
}

final_score = score.sentiment(txt1, pos.words, neg.words, .progress='text')

final1$score <- final_score$score

final1_normal <- final1
final1_normal$scaled.score <- scaled.dat

#1/2

# First we will remove symbol entities from the stored tweets (text)
txt1_2 = gsub("(<U+00E1>)((?:\\b\\W*@\\w+)+)", "", txt1_2)
txt1_2 = gsub("(<U+00F1>)((?:\\b\\W*@\\w+)+)", "", txt1_2)
txt1_2 = gsub("(\r\np\r\n)((?:\\b\\W*@\\w+)+)", "", txt1_2)

# Then remove all “@people”
txt1_2 = gsub("<U+00\\w+", "", txt1_2)
# Then remove all the punctuation
txt1_2 = gsub("[[:punct:]]", "", txt1_2)
# Then remove numbers, we need only text for analytics
txt1_2 = gsub("[[:digit:]]", "", txt1_2)
# the remove html links, which are not required for sentiment analysis
txt1_2 = gsub("http\\w+", "", txt1_2)
# finally, we remove unnecessary spaces (white spaces, tabs etc)
txt1_2 = gsub("[ \t]{2,}", "", txt1_2)
txt1_2 = gsub("^\\s+|\\s+$", "", txt1_2)
# if anything else, you feel, should be removed, you can. For example “slang words” etc using the above function and methods.

# Let us first define a function which can handle “tolower error handling”, if arises any, during converting all words in lower case.
catch.error = function(x)
{
  # let us create a missing value for test purpose
  y = NA
  # try to catch that error (NA) we just created
  catch_error = tryCatch(tolower(x), error=function(e) e)
  # if not an error
  if (!inherits(catch_error, "error"))
    y = tolower(x)
  # check result if error exists, otherwise the function works fine.
  return(y)
}

# Now we will transform all the words in lower case using catch.error function we just created above and with sapply function
txt1_2 = sapply(txt1_2, catch.error)

pos.words = c(hu.liu.pos, 'improve', 'soon', 'hope', 'wish', 'management', 'morality', 'employed')
neg.words = c(hu.liu.neg, 'dependent', 'children', 'abuse', 'limited', 'polygamous', 'not care', 'unemployed')

tryTolower = function(x)
{
  # create missing value
  # this is where the returned value will be
  y = NA
  # tryCatch error
  try_error = tryCatch(tolower(x), error = function(e) e)
  # if not an error
  if (!inherits(try_error, "error"))
    y = tolower(x)
  return(y)
}

final_score = score.sentiment(txt1_2, pos.words, neg.words, .progress='text')

final1_2$score <- final_score$score

##1/3

# First we will remove symbol entities from the stored tweets (text)
txt1_3 = gsub("(<U+00E1>)((?:\\b\\W*@\\w+)+)", "", txt1_3)
txt1_3 = gsub("(<U+00F1>)((?:\\b\\W*@\\w+)+)", "", txt1_3)
txt1_3 = gsub("(\r\np\r\n)((?:\\b\\W*@\\w+)+)", "", txt1_3)

# Then remove all “@people”
txt1_3 = gsub("<U+00\\w+", "", txt1_3)
# Then remove all the punctuation
txt1_3 = gsub("[[:punct:]]", "", txt1_3)
# Then remove numbers, we need only text for analytics
txt1_3 = gsub("[[:digit:]]", "", txt1_3)
# the remove html links, which are not required for sentiment analysis
txt1_3 = gsub("http\\w+", "", txt1_3)
# finally, we remove unnecessary spaces (white spaces, tabs etc)
txt1_3 = gsub("[ \t]{2,}", "", txt1_3)
txt1_3 = gsub("^\\s+|\\s+$", "", txt1_3)
# if anything else, you feel, should be removed, you can. For example “slang words” etc using the above function and methods.

# Let us first define a function which can handle “tolower error handling”, if arises any, during converting all words in lower case.
catch.error = function(x)
{
  # let us create a missing value for test purpose
  y = NA
  # try to catch that error (NA) we just created
  catch_error = tryCatch(tolower(x), error=function(e) e)
  # if not an error
  if (!inherits(catch_error, "error"))
    y = tolower(x)
  # check result if error exists, otherwise the function works fine.
  return(y)
}

# Now we will transform all the words in lower case using catch.error function we just created above and with sapply function
txt1_3 = sapply(txt1_3, catch.error)

pos.words = c(hu.liu.pos, 'improve', 'soon', 'hope', 'wish', 'management', 'morality', 'employed')
neg.words = c(hu.liu.neg, 'dependent', 'children', 'abuse', 'limited', 'polygamous', 'not care', 'unemployed')

tryTolower = function(x)
{
  # create missing value
  # this is where the returned value will be
  y = NA
  # tryCatch error
  try_error = tryCatch(tolower(x), error = function(e) e)
  # if not an error
  if (!inherits(try_error, "error"))
    y = tolower(x)
  return(y)
}

final_score = score.sentiment(txt1_3, pos.words, neg.words, .progress='text')

final1_3$score <- final_score$score

# 2
# First we will remove symbol entities from the stored tweets (text)
txt2 = gsub("(<U+00E1>)((?:\\b\\W*@\\w+)+)", "", txt2)
txt2 = gsub("(<U+00F1>)((?:\\b\\W*@\\w+)+)", "", txt2)
txt2 = gsub("(\r\np\r\n)((?:\\b\\W*@\\w+)+)", "", txt2)

# Then remove all “@people”
txt2 = gsub("<U+00\\w+", "", txt2)
# Then remove all the punctuation
txt2 = gsub("[[:punct:]]", "", txt2)
# Then remove numbers, we need only text for analytics
txt2 = gsub("[[:digit:]]", "", txt2)
# the remove html links, which are not required for sentiment analysis
txt2 = gsub("http\\w+", "", txt2)
# finally, we remove unnecessary spaces (white spaces, tabs etc)
txt2 = gsub("[ \t]{2,}", "", txt2)
txt2 = gsub("^\\s+|\\s+$", "", txt2)
# if anything else, you feel, should be removed, you can. For example “slang words” etc using the above function and methods.

# Let us first define a function which can handle “tolower error handling”, if arises any, during converting all words in lower case.
catch.error = function(x)
{
  # let us create a missing value for test purpose
  y = NA
  # try to catch that error (NA) we just created
  catch_error = tryCatch(tolower(x), error=function(e) e)
  # if not an error
  if (!inherits(catch_error, "error"))
    y = tolower(x)
  # check result if error exists, otherwise the function works fine.
  return(y)
}

# Now we will transform all the words in lower case using catch.error function we just created above and with sapply function
txt2 = sapply(txt2, catch.error)

pos.words = c(hu.liu.pos, 'improve', 'soon', 'hope', 'wish', 'management', 'morality', 'employed')
neg.words = c(hu.liu.neg, 'dependent', 'children', 'abuse', 'limited', 'polygamous', 'not care', 'unemployed')

tryTolower = function(x)
{
  # create missing value
  # this is where the returned value will be
  y = NA
  # tryCatch error
  try_error = tryCatch(tolower(x), error = function(e) e)
  # if not an error
  if (!inherits(try_error, "error"))
    y = tolower(x)
  return(y)
}

final_score = score.sentiment(txt2, pos.words, neg.words, .progress='text')

final2$score <- final_score$score

# 3

# First we will remove symbol entities from the stored tweets (text)
txt3 = gsub("(<U+00E1>)((?:\\b\\W*@\\w+)+)", "", txt3)
txt3 = gsub("(<U+00F1>)((?:\\b\\W*@\\w+)+)", "", txt3)
txt3 = gsub("(\r\np\r\n)((?:\\b\\W*@\\w+)+)", "", txt3)

# Then remove all “@people”
txt3 = gsub("<U+00\\w+", "", txt3)
# Then remove all the punctuation
txt3 = gsub("[[:punct:]]", "", txt3)
# Then remove numbers, we need only text for analytics
txt3 = gsub("[[:digit:]]", "", txt3)
# the remove html links, which are not required for sentiment analysis
txt3 = gsub("http\\w+", "", txt3)
# finally, we remove unnecessary spaces (white spaces, tabs etc)
txt3 = gsub("[ \t]{2,}", "", txt3)
txt3 = gsub("^\\s+|\\s+$", "", txt3)
# if anything else, you feel, should be removed, you can. For example “slang words” etc using the above function and methods.

# Let us first define a function which can handle “tolower error handling”, if arises any, during converting all words in lower case.
catch.error = function(x)
{
  # let us create a missing value for test purpose
  y = NA
  # try to catch that error (NA) we just created
  catch_error = tryCatch(tolower(x), error=function(e) e)
  # if not an error
  if (!inherits(catch_error, "error"))
    y = tolower(x)
  # check result if error exists, otherwise the function works fine.
  return(y)
}

# Now we will transform all the words in lower case using catch.error function we just created above and with sapply function
txt3 = sapply(txt3, catch.error)


pos.words = c(hu.liu.pos, 'improve', 'soon', 'hope', 'wish', 'management', 'morality', 'employed')
neg.words = c(hu.liu.neg, 'dependent', 'children', 'abuse', 'limited', 'polygamous', 'not care', 'unemployed')

tryTolower = function(x)
{
  # create missing value
  # this is where the returned value will be
  y = NA
  # tryCatch error
  try_error = tryCatch(tolower(x), error = function(e) e)
  # if not an error
  if (!inherits(try_error, "error"))
    y = tolower(x)
  return(y)
}

final_score = score.sentiment(txt3, pos.words, neg.words, .progress='text')

final3$score <- final_score$score

#4 

# First we will remove symbol entities from the stored tweets (text)
txt4 = gsub("(<U+00E1>)((?:\\b\\W*@\\w+)+)", "", txt4)
txt4 = gsub("(<U+00F1>)((?:\\b\\W*@\\w+)+)", "", txt4)
txt4 = gsub("(\r\np\r\n)((?:\\b\\W*@\\w+)+)", "", txt4)

# Then remove all “@people”
txt4 = gsub("<U+00\\w+", "", txt4)
# Then remove all the punctuation
txt4 = gsub("[[:punct:]]", "", txt4)
# Then remove numbers, we need only text for analytics
txt4 = gsub("[[:digit:]]", "", txt4)
# the remove html links, which are not required for sentiment analysis
txt4 = gsub("http\\w+", "", txt4)
# finally, we remove unnecessary spaces (white spaces, tabs etc)
txt4 = gsub("[ \t]{2,}", "", txt4)
txt4 = gsub("^\\s+|\\s+$", "", txt4)
# if anything else, you feel, should be removed, you can. For example “slang words” etc using the above function and methods.

# Let us first define a function which can handle “tolower error handling”, if arises any, during converting all words in lower case.
catch.error = function(x)
{
  # let us create a missing value for test purpose
  y = NA
  # try to catch that error (NA) we just created
  catch_error = tryCatch(tolower(x), error=function(e) e)
  # if not an error
  if (!inherits(catch_error, "error"))
    y = tolower(x)
  # check result if error exists, otherwise the function works fine.
  return(y)
}

# Now we will transform all the words in lower case using catch.error function we just created above and with sapply function
txt4 = sapply(txt4, catch.error)


pos.words = c(hu.liu.pos, 'improve', 'soon', 'hope', 'wish', 'management', 'morality', 'employed')
neg.words = c(hu.liu.neg, 'dependent', 'children', 'abuse', 'limited', 'polygamous', 'not care', 'unemployed')

tryTolower = function(x)
{
  # create missing value
  # this is where the returned value will be
  y = NA
  # tryCatch error
  try_error = tryCatch(tolower(x), error = function(e) e)
  # if not an error
  if (!inherits(try_error, "error"))
    y = tolower(x)
  return(y)
}

final_score = score.sentiment(txt4, pos.words, neg.words, .progress='text')

final4$score <- final_score$score


# 5

# First we will remove symbol entities from the stored tweets (text)
txt5 = gsub("(<U+00E1>)((?:\\b\\W*@\\w+)+)", "", txt5)
txt5 = gsub("(<U+00F1>)((?:\\b\\W*@\\w+)+)", "", txt5)
txt5 = gsub("(\r\np\r\n)((?:\\b\\W*@\\w+)+)", "", txt5)

# Then remove all “@people”
txt5 = gsub("<U+00\\w+", "", txt5)
# Then remove all the punctuation
txt5 = gsub("[[:punct:]]", "", txt5)
# Then remove numbers, we need only text for analytics
txt5 = gsub("[[:digit:]]", "", txt5)
# the remove html links, which are not required for sentiment analysis
txt5 = gsub("http\\w+", "", txt5)
# finally, we remove unnecessary spaces (white spaces, tabs etc)
txt5 = gsub("[ \t]{2,}", "", txt5)
txt5 = gsub("^\\s+|\\s+$", "", txt5)
# if anything else, you feel, should be removed, you can. For example “slang words” etc using the above function and methods.

# Let us first define a function which can handle “tolower error handling”, if arises any, during converting all words in lower case.
catch.error = function(x)
{
  # let us create a missing value for test purpose
  y = NA
  # try to catch that error (NA) we just created
  catch_error = tryCatch(tolower(x), error=function(e) e)
  # if not an error
  if (!inherits(catch_error, "error"))
    y = tolower(x)
  # check result if error exists, otherwise the function works fine.
  return(y)
}

# Now we will transform all the words in lower case using catch.error function we just created above and with sapply function
txt5 = sapply(txt5, catch.error)


pos.words = c(hu.liu.pos, 'improve', 'soon', 'hope', 'wish', 'management', 'morality', 'employed')
neg.words = c(hu.liu.neg, 'dependent', 'children', 'abuse', 'limited', 'polygamous', 'not care', 'unemployed')

tryTolower = function(x)
{
  # create missing value
  # this is where the returned value will be
  y = NA
  # tryCatch error
  try_error = tryCatch(tolower(x), error = function(e) e)
  # if not an error
  if (!inherits(try_error, "error"))
    y = tolower(x)
  return(y)
}

final_score = score.sentiment(txt5, pos.words, neg.words, .progress='text')

final5$score <- final_score$score

first9000 <- ggplot(final1_normal, aes(x=scaled.score)) + 
  geom_histogram(binwidth = 0.5, aes(y=..count.., fill=loans.loan_amount), na.rm = TRUE) +
  scale_fill_brewer(palette="Dark2") +
  ggtitle('Sentiment Analysis of First 9000 Text Descriptions') +
  theme(legend.position='right') + ylab('Number of Texts') + xlab('Sentiment Score')

scoreloan <- ggplot(final1, aes(x=score, y=loans.loan_amount)) +
  geom_point(na.rm = TRUE) +
  geom_smooth(method = "lm", group = 1) + 
  labs(title = "Relation Between Sentiment Scores and Loan Amount", x = "Score", y = "Loan Amount") +
  scale_x_continuous(breaks = c(-5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5), limits = c(-5, 5))

APscore <- ggplot(final1, aes(x=score)) + 
  geom_histogram(binwidth = 1, aes(y=..count.., fill=loans.loan_amount), na.rm = TRUE, position = "dodge") +
  facet_wrap(~Antipoverty, ncol = 1, scales = "free_y") +
  labs(title = "Presence of Antipoverty Badge and Sentiment Scores", x = "Score", y = "Number of texts")+
  scale_x_continuous(breaks = c(-5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5), limits = c(-5, 5))

CVscore <- ggplot(final1, aes(x=score)) + 
  geom_histogram(binwidth = 1, aes(y=..count.., fill=loans.loan_amount), na.rm = TRUE) +
  facet_wrap(~Client_Voice, ncol = 1, scales = "free_y")+
  labs(title = "Presence of Client Voice Badge and Sentiment Scores", x = "Score", y = "Number of texts") +
  scale_x_continuous(breaks = c(-5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5), limits = c(-5, 5))

VGscore <- ggplot(final1, aes(x=score)) + 
  geom_histogram(binwidth = 1, aes(y=..count.., fill=loans.loan_amount), na.rm = TRUE) +
  facet_wrap(~Vulnerable_Group, ncol = 1, scales = "free_y")+
  labs(title = "Presence of Vulnerable Group Badge and Sentiment Scores", x = "Score", y = "Number of texts") +
  scale_x_continuous(breaks = c(-5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5), limits = c(-5, 5))


# FINAL DATASET
final_sentiment <- rbind(final1, final1_2, final1_3, final2, final3, final4, final5)
