setwd("~/Twitter_Sentiment/cda_4910_ideas")
library(tidyverse)
library(rtweet)
library(lubridate)
library(NLP)
library(tidytext)
library(magrittr)

#Sourcing a seperate document to authenticate my API | Security
source("api.r")



tweets <- search_tweets("realDonaldTrump", n = 100)
tweets_text <- tweets %>% select(screen_name,text)
tweets_text %<>% unnest_tokens(word, text) %>% anti_join(stop_words)
tweets_text %>% count(word) %>% arrange(desc(n))
tweets_text %<>% inner_join(get_sentiments("nrc"))
tweets_text %>% count(sentiment) %>% arrange(desc(n))

tweets <- search_tweets("AOC", n = 100)
tweets_text <- tweets %>% select(screen_name,text)
tweets_text %<>% unnest_tokens(word, text) %>% anti_join(stop_words)
tweets_text %>% count(word) %>% arrange(desc(n))
tweets_text %<>% inner_join(get_sentiments("nrc"))
tweets_text %>% count(sentiment) %>% arrange(desc(n))

