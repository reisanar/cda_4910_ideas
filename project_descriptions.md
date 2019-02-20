
# Erich Grennan-Mengore & Natalie Brum: Relocation Station

### *Introduction*

 
Our project idea is to help newly graduated Data Science major to find the best match of city to live in based on the criteria of Cost Of Living, Weather, and Climate.
 
 

### *Description of the problem*
 
The problem we are trying to solve is how does a college graduate determine the ideal city to live in depending on what they are looking for in a city. Considering the current state of the economy, gone are the days where you can choose a random city and hope to make money just from being big. Job markets have become competitive, rent keeps on going up, and the cost of daily necessities can fluctuate at any moment.
 
  

### *Timeline*
  
  Midterm:
  
	- Initial Research
  
	- Determine data sources
  
	- Initial analysis of data (EDA)
  
	- Final modification of data sources
  
	- Determine analysis methods that could be used 
  
	- Additional research
  
	- Final draft for designt
 


  Final:
  
	- Start development 
 
	- Create initial version
  
	- Testing
  
	- Additional features
 
	- Use Shiny application displaying to show analysis and data visualization
 


### *Data sources*
* https://raw.githubusercontent.com/reisanar/datasets/master/cost-of-living-2018.csv - Cost of Living Data for 2018 obtained by Professor Sanchez-Arias from numbeo.com, which was placed on github.

* https://apps.bea.gov/iTable/iTable.cfm?reqid=70&step=1&isuri=1&acrdn=8#reqid=70&step=1&isuri=1 - Regional price parity in 2016 compiled by the BEA

* https://www.thereadystore.com/natural-disasters-map# - Natural Disaster Locations

* https://cran.r-project.org/web/packages/geonames/index.html - Allows for the ability to query the Geonames database to obtain the Latitude and Longitude of a city.

* https://cran.r-project.org/web/packages/GSODR/vignettes/GSODR.html - Used to obtain climate and weather data from NOAA, then using that to attach averages of climate variables to the data set.

### *References*


* https://www.r-bloggers.com/best-city-for-data-scientists-today-according-to-two-variables-harvested-with-rvest/ 

* https://www.techrepublic.com/article/the-10-cities-with-the-highest-salaries-for-data-scientists/

* https://www.numbeo.com/cost-of-living/
s
* https://www.numbeo.com/common/motivation_and_methodology.jsp

* https://www.numbeo.com/cost-of-living/cpi_explained.jsp

* https://rpubs.com/yujingma45/149705

* https://dashee87.github.io/data%20science/data-scientists-vs-data-analysts-part-1/

# Luke Rhon, Marc Burstein, and Kenneth Williams: Sleep Study Model

## Introduction  
For the project we will be using a dataset focusing on sleep patterns of 
college students. The dataset has variables that tracked students’ 
academic performance, sleep schedule, cognitive function, and
mental health throughout the study. All the data was gathered from an 
older study in 2012 by Onyper, Thacher, Gilbert, and Gradess. In this 
study, they investigated the relationship between class times,
hours of sleep, circadian preference, and academic performance in 
college students. In their findings they concluded that later class 
start times, although allowed for more sleep, had a negative effect
on student’s academic success and attitude.

## Description of the problem  
Different students in any specific class will gain different grades. 
Most of the grades apply to studying and how well each student can 
comprehend and handle different lessons in the class.
However, there are multiple other different kinds of factors as well 
such as overall mood in or towards the class and what is being dealt 
with outside of class time. We’re studying different student’s
sleeping patterns and measuring if it correlates with how well they do 
in specific classes overtime. We’ll be comparing their sleep patterns, 
schedules, and times with what time of day the class starts
to determine the types of grades a student gets in each specific class.

## Goals/Objectives  
The main goal of this project is to build a predictive model that 
predicts student sleep behavior or performance based on input values. 
Using the findings from the 2012 study we can test those results
by creating a model. Once the model is built and accurate, we can 
incorporate it into an interactive shiny app. Then anyone interested can 
see the results of their input.

## Notes on Research Questions 
1. What effect does sleep have on the performance of students?


2. What is the ideal sleep schedule to boost student class performance 
and mental health?


3. Build a predictive model base on results in 2012 study that receives 
input to predict sleep behavior.

## A preliminary timeline  

Week 2 - 3
Research problem and perform data cleaning

Week 4 - 6
Do EDA to get an understanding of the data

Week 7 - 8
Try to answer research question 1

Week 9 - 10
Try to answer research question 2

Week 11 - 12
Build a model based on original study data.

Week 13
Implement shiny app to interact with model

Week 14 - 16
Write report and improve model

## Technology Tools  
For this project we will be using R and Python.

## Data Sources  
The data is taken from Dr. Reinaldo Sanchez-Arias’ GitHub. The source of 
the data is based on a study from April 2012 by Onyper SV, Thacher PV, 
Gilbert JW, and Gradess SG.

## References  
Hutcheon, Thomas G., et al. “The Impact of a Technology Ban on Students’ 
Perceptions and Performance in Introduction to Psychology.” Shibboleth 
Authentication Request, Jan. 2019, 
journals-sagepub-com.flpoly-proxy.flvc.org/doi/pdf/10.1177/0098628318816141.

Melton, Bridget & Bigham, Lauren & W Bland, Helen & Bird, Matthew & 
Fairman, Ciaran. (2014). Health-related Behaviors and Technology Usage 
among College Students. American journal of health behavior. 38. 510-8. 
10.5993/AJHB.38.4.4. 

Merikanto, Ilona, et al. “Late Bedtimes Weaken School Performance and
Predispose Adolescents to Health Hazards.” ScienceDirect, Elsevier BV,
2013,
www.sciencedirect.com/science/article/pii/S1389945713002554.

Moore, Molly Suzanne. “Sleep, Alcohol, and Academic Performance in 
Undergraduate Students.” Auburn, 4 Aug. 2018, 
etd.auburn.edu/bitstream/handle/10415/6307/Moore%20Dissertation%20Final.pdf?sequence=2&isAllowed=y.

Nguyen, Holly Alexandra. “Using Personality Traits and Chronotype for 
Personalized Feedback in a Sleep Web App.” Worcester Polytechnic 
Institute, Apr. 2018, 
digitalcommons.wpi.edu/cgi/viewcontent.cgi?article=4245&context=mqp-all.

Norbury, Ray, and Simon Evans. “Time to Think: Subjective Sleep Quality, 
Trait Anxiety and University Start Time.” NeuroImage, Academic Press, 23 
Nov. 2018, www.sciencedirect.com/science/article/pii/S0165178118315464.

Taylor, Daniel J et al. “The role of sleep in predicting college 
academic performance: is it a unique predictor?” Behavioral sleep 
medicine vol. 11,3 (2013): 159-72.

Önder, Ismail, et al. “Circadian Preferences, Sleep Quality and Sleep
Patterns, Personality, Academic Motivation and Academic Achievement of
University Students.” ScienceDirect, Elsevier BV, 2014,
www.sciencedirect.com/science/article/pii/S1041608014000223.




# Kahlil Wehmeyer: Political Sentiment Web App


The purpose of this project will be to create a somewhat flexible web app the can gauge the sentiment
between to subjects based on tweets to determine which one has the better sentiment with Twitter users.
The main use of this web app would be to see how political candidates in the 2020 election are fairing
against one another. The web app will be able to go beyond political topics and determine which subject
has more favorable sentiment in cases that might be non political such as ‘Coca-Cola vs. Pepsi’ or ‘MacOS
vs. Windows’. The end result of the apps analysis will be to determine a winner which will be based on a
number of factors. Unlike a lot of Twitter based sentiment analysis projects we hope to add more weight to
our analysis by accounting for interactions with relevant Tweets, the corresponsing clout of the authors and
the overall impact it made.

**Tools used**:
- [x] Twitter
- [x] RStudio
- [x] Shiny
- [ ] Shiny.io

## References
1. Gentry, Jeff. n.d. “Package ‘twitteR’.” The Comprehensive R Archive Network. Comprehensive R Archive

2. Network (CRAN). https://cran.r-project.org/web/packages/twitteR/.

3. Joshi, Aditya, Pushpak Bhattacharyya, and Mark Carman. 2016. “Political Issue Extraction Model: A
Novel Hierarchical Topic Model That Uses Tweets by Political and Non-Political Authors.” 

4. Proceedings of the 7th Workshop on Computational Approaches to Subjectivity, Sentiment and Social Media Analysis.
https://doi.org/10.18653/v1/w16-0415.

5. Kinsley, Harrison. n.d. “Sentiment Analysis - What Is It?” Sentdex Analysis. http://sentdex.com/
sentiment-analysis/.

6. Ringsquandl, Martin, and Dušan Petković. 2013. “Analyzing Political Sentiment on Twitter.” Analyzing

7. Microtext: Papers from the 2013 AAAI Spring Symposium.

8. Silge, Julia, and David Robinson. Text Mining with R: a Tidy Approach. OReilly, 2017.

## Primary Data Source

“Docs - Twitter Developers.” Twitter, Twitter, developer.twitter.com/en/docs.html.



# Jordan Douglass and Oliver Bennett: Insight into Prison Specialist Care and Recidivism


The main goal for this project is to understand the prison care system and find any correlations between existing prison data and data on the general population in Florida as well as correlations surrounding prisons and social determinants of health in a given county. 
As a team, we aim to use the meaningful information gathered to better understand the incarceration system in our state and how certain aspects affect recidivism outcomes.

**Tools used**
- Tableau 
- Excel

## References: 

Articles:
Health Care Contracts Under Scrutiny:
https://www.palmbeachpost.com/news/state--regional/lucrative-florida-prison-healthcare-contract-under-increasing-scrutiny/slh8FmmxdWpH7TnHyW5HFN/
Privatizing Prisons
https://www.palmbeachpost.com/news/privatizing-prison-health-care-leaves-inmates-pain-sometimes-dying/hiJMRmNG9YhE9JFTxfnZaN/
Overburdened Prison Systems in Florida
http://www.crj.org/news-article/new-report-shows-path-forward-floridas-overburdened-prison-system/


## Data Sources:

List of Florida Institutions
http://www.dc.state.fl.us/ci/index.html
Costs/Quality of Prison Care
https://www.pewtrusts.org/en/research-and-analysis/reports/2017/10/prison-health-care-costs-and-quality
Recidivism Report 2018
http://www.dc.state.fl.us/pub/recidivism/RecidivismReport2018.pdf
General Heath Outcomes in Florida Downloads
http://www.countyhealthrankings.org/app/florida/2018/downloads
General Health Outcomes and Social Determinants Overview
http://www.countyhealthrankings.org/app/florida/2018/overview
Urbanicity Trends and Incarceration Data form 2010 - 2015
https://www.vera.org/projects/incarceration-trends


