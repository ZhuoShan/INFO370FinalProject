library(dplyr)
library(ggplot2)

setwd('~/Desktop/group')

used_car <- read.csv("tc20171021.csv")
car_sales <- read.csv("Car_sales (1).csv")
gdp <- read.csv("gdpstate_naics_all.csv")
car_emission <- read.csv("download-data-for-Aug-2017-Euro-6.csv",header=FALSE, stringsAsFactors=FALSE, fileEncoding="latin1")

used_car_clean <- used_car %>% 
  select(Make, Model, City, State, Year, Price)

car_sales_clean <- car_sales %>% 
  select(Make, Model, Sales.in.thousands)

#merge1 used_car and car_sales
merge_used_sales <- merge(x = used_car, y = car_sales, by = "Make", all = TRUE)


#merge2 used_car and gdp
#merge3 state_elevation and used_car


#merge4 used_car and car_emission
merge_used_emission <- merge(x = used_car, y = car_emission, by = "Make", all = TRUE)


#write.csv(output, "output.csv")
