setwd("~/Twitter_Sentiment")
library(tidyverse)
library(rtweet)
library(lubridate)
library(esquisse)


create_token(app = "
CAPSTONE2_Political_Sentiment",
             consumer_key = consumer_key,
             consumer_secret = consumer_secret,
             access_token = access_token,
             access_secret = access_secret)


# Bernie Sanders ----------------------------------------------------------

bern <- search_tweets("Bernie Sanders", type='recent', n = 10000, include_rts=FALSE)
ts_plot(bern, "1 hour")


# Donald Trump ------------------------------------------------------------


trump <- search_tweets("Donald Trump", type='recent', n = 10000, include_rts=FALSE)
ts_plot(trump, "1 hour")


# Frequency of Posts ------------------------------------------------------

freq <- get_timelines(c("BernieSanders","realDonaldTrump"), n = 10000)
freq %>% filter(created_at > "2019-01-01") %>%  group_by(screen_name) %>% ts_plot("days") + geom_point()



# Get Trends --------------------------------------------------------------

tampa <- get_trends("Tampa")
tampa$tweet_volume <- as.integer(tampa$tweet_volume)

tampa %>% filter(tweet_volume>4000) %>% ggplot() +
  geom_col(aes(x = trend, y = tweet_volume)) +
  coord_flip()+
  theme_minimal()+
  labs(title = "Top Trending Tweets from Tampa",
       x = "Trends",
               y = "Number of Tweets",
               subtitle = "Based on volume of tweets")


