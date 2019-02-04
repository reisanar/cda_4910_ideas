setwd("~/Twitter_Sentiment/cda_4910_ideas")
library(tidyverse)
library(rtweet)
library(lubridate)
library(NLP)
library(tidytext)
library(magrittr)
library(wordcloud)
library(reshape2)

#Sourcing a seperate document to authenticate my API | Security
source("api.r")



# tweets <- search_tweets("realDonaldTrump", n = 100)
# tweets_text <- tweets %>% select(screen_name,text)
# tweets_text %<>% unnest_tokens(word, text) %>% anti_join(stop_words)
# tweets_text %>% count(word) %>% arrange(desc(n))
# tweets_text %<>% inner_join(get_sentiments("nrc"))
# tweets_text %>% count(sentiment) %>% arrange(desc(n))
# 
# tweets <- search_tweets("AOC", n = 100)
# tweets_text <- tweets %>% select(screen_name,text)
# tweets_text %<>% unnest_tokens(word, text) %>% anti_join(stop_words)
# tweets_text %>% count(word) %>% arrange(desc(n))
# tweets_text %<>% inner_join(get_sentiments("nrc"))
# tweets_text %>% count(sentiment) %>% arrange(desc(n))


# Automatic Sentiment Functions -------------------------------------------

automatic_sentiment_score <- function(subject, limit = 100){
  tweets <- search_tweets(subject, n = limit)
  tweets %<>% select(screen_name, text) # Selecting only screen name and text
  tweets$text <-  gsub('http\\S+\\s*', '', tweets$text) # Removing links from text
  tweets %<>% unnest_tokens(word, text) # Unnesting tokens
  tweets %<>% anti_join(stop_words) # Removing stop words
  tweets %<>% inner_join(get_sentiments("afinn")) # Getting sentiment scores
  tweets %<>% group_by(word) %>% summarise(n = n(), sum_score = sum(score)) # Summarising total scores and word counts
  tweets$sum_score %>% mean(trim=0.1) # returning trimmed mean of average score
  
}

timelines_sentiment_score <- function(handle, limit = 100){
  tweets <- get_timeline(handle, n = limit)
  tweets %<>% select(screen_name, text) # Selecting only screen name and text
  tweets$text <-  gsub('http\\S+\\s*', '', tweets$text) # Removing links from text
  tweets %<>% unnest_tokens(word, text) # Unnesting tokens
  tweets %<>% anti_join(stop_words) # Removing stop words
  tweets %<>% inner_join(get_sentiments("afinn")) # Getting sentiment scores
  tweets %<>% group_by(word) %>% summarise(n = n(), sum_score = sum(score)) # Summarising total scores and word counts
  tweets$sum_score %>% mean(trim=0.1) # returning trimmed mean of average score
  
}

word_cloud_generator <- function(subject, limit = 100){
  tweets <- search_tweets(subject, n = limit)
  tweets %<>% select(screen_name, text) # Selecting only screen name and text
  tweets$text <-  gsub('http\\S+\\s*', '', tweets$text) # Removing links from text
  tweets %<>% unnest_tokens(word, text) # Unnesting tokens
  tweets %<>% anti_join(stop_words) # Removing stop words
  tweets %<>% inner_join(get_sentiments("bing")) # Getting sentiment scores
  tweets %>% count(word, sentiment, sort = TRUE) %>%   acast(word ~ sentiment, value.var = "n", fill = 0) %>%
    comparison.cloud(colors = c("red4", "green3"),
                     max.words = 200)
}

word_cloud_timeline <- function(handle, limit = 100){
  tweets <- get_timeline(handle, n = limit)
  tweets %<>% select(screen_name, text) # Selecting only screen name and text
  tweets$text <-  gsub('http\\S+\\s*', '', tweets$text) # Removing links from text
  tweets %<>% unnest_tokens(word, text) # Unnesting tokens
  tweets %<>% anti_join(stop_words) # Removing stop words
  tweets %<>% inner_join(get_sentiments("bing")) # Getting sentiment scores
  tweets %>% count(word, sentiment, sort = TRUE) %>%   acast(word ~ sentiment, value.var = "n", fill = 0) %>%
    comparison.cloud(colors = c("red4", "green3"),
                     max.words = 100)
}
