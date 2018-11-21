
getwd() #gives the working directory
setwd("C:/Users/mserrano/Documents/STATS/Stat 579/Final Project/LaLiga") # note you have to use this slash "/" if you are using a PC. Be sure all your csv files are in this directory.
season0910<- read.csv("season-0910.csv")
season1011<- read.csv("season-1011.csv")
season1112<- read.csv("season-1112.csv")
season1213<- read.csv("season-1213.csv")
season1314<- read.csv("season-1314.csv")
season1415<- read.csv("season-1415.csv")
season1516<- read.csv("season-1516.csv")
season1617<- read.csv("season-1617.csv")
season1718<- read.csv("season-1718.csv")

#selecting the same number columns (22) for each season
library(dplyr)
season0910 <- season0910 %>% select(Div,Date,HomeTeam,AwayTeam,FTHG,FTAG,FTR,HTHG,HTAG,HTR,HS,AS,HST,AST,HF,AF,HC,AC,HY,                      AY,HR,AR) 
season1011 <- season1011 %>% select(Div,Date,HomeTeam,AwayTeam,FTHG,FTAG,FTR,HTHG,HTAG,HTR,HS,AS,HST,AST,HF,AF,HC,AC,HY,                      AY,HR,AR) 
season1112 <- season1112 %>% select(Div,Date,HomeTeam,AwayTeam,FTHG,FTAG,FTR,HTHG,HTAG,HTR,HS,AS,HST,AST,HF,AF,HC,AC,HY,                      AY,HR,AR) 
season1213 <- season1213 %>% select(Div,Date,HomeTeam,AwayTeam,FTHG,FTAG,FTR,HTHG,HTAG,HTR,HS,AS,HST,AST,HF,AF,HC,AC,HY,                      AY,HR,AR) 
season1314 <- season1314 %>% select(Div,Date,HomeTeam,AwayTeam,FTHG,FTAG,FTR,HTHG,HTAG,HTR,HS,AS,HST,AST,HF,AF,HC,AC,HY,                      AY,HR,AR) 
season1415 <- season1415 %>% select(Div,Date,HomeTeam,AwayTeam,FTHG,FTAG,FTR,HTHG,HTAG,HTR,HS,AS,HST,AST,HF,AF,HC,AC,HY,                      AY,HR,AR) 
season1516 <- season1516 %>% select(Div,Date,HomeTeam,AwayTeam,FTHG,FTAG,FTR,HTHG,HTAG,HTR,HS,AS,HST,AST,HF,AF,HC,AC,HY,                      AY,HR,AR) 
season1617 <- season1617 %>% select(Div,Date,HomeTeam,AwayTeam,FTHG,FTAG,FTR,HTHG,HTAG,HTR,HS,AS,HST,AST,HF,AF,HC,AC,HY,                      AY,HR,AR) 
season1718 <- season1718 %>% select(Div,Date,HomeTeam,AwayTeam,FTHG,FTAG,FTR,HTHG,HTAG,HTR,HS,AS,HST,AST,HF,AF,HC,AC,HY,                      AY,HR,AR) 

allseasons <- rbind(season0910,season1011,season1112,season1213,season1314,season1415,
                    season1516,season1617, season1718)
write.csv(allseasons,"allseasons.csv")