
#install dependecies
install.packages("rtweet")
install.packages("ggplot2")
install.packages("dplyr")
install.packages("tidytext")
install.packages("httpuv")
install.packages("xlsx")

#load packages
library(rtweet);
library(ggplot2);
library(dplyr);
library(tidytext);
library(httpuv);
library(xlsx);

##Set Appname
appname <- "KBPsystem_rTweets";
##Set key
key <- "pN967qdkidIIcS7hlqheRlh6D";
##Set Secret
secret <- "nSuvUvfUSHNLX9ZephuOHXxiTDlepDWZaOpLkogEEBEM1aqBwq";
#Twitter Token
twitter_token <- create_token(
  app = appname,
  consumer_key = key,
  consumer_secret = secret
)


###Get 10,000 tweets about "#100DaysOfCode"
ODC <- search_tweets(q="#100DaysOfCode", n=10000)

###Get 10,000 tweets about "#100DaysOfCode" but DO NOT include Re-Tweets
ODC_noRT <- search_tweets(q="#100DaysOfCode", n=10000, include_rts = FALSE)




