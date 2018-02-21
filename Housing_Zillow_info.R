#The start of working with the US Contagious Diseases

#Setting my working Directory in order to be in the folder where the Zillow dataset is.


setwd("C:/Users/micha/Desktop/DevLeague Begins Nov 7 2017/Project_Sprint_6/")

#Loading libraries and reading the CSV file "zillow_house_sales" into R.



#Loading the library ggplot2
library(ggplot2)

#Loading the library plyr in order to use the ddply() function
library("plyr")

#Loading the library dplyr in order for the 
library(dplyr)

#loading library car as it may be used for the Anova Calculation
library("car")

#loading library ggpubr as it used for boxplots
library("ggpubr")

#loading the library multcomp to perform multiple comparison procedures for an ANOVA. glht stands for general linear hypothesis tests. 
library(multcomp)

# Plot weight by group and color by group
library("ggpubr")

#The library for skewness and probably kurtosis
library("e1071")

#The library for statistics
library(tigerstats)

read.csv("zillow_sales_price.csv")

#Creating the variable "housing" to represent the ""Zillow.csv"" 
#which was pulled from the Internet
housing <- read.csv("zillow_sales_price.csv")

#In case values are given in exponential numbers
options(scipen = 10)

#This line of code gives me the list of all the different variables in that particular column
#unique(sick$disease) 

#calculate the skewness of the Column for March 2008 (X2008.03)
skewness(housing$X2008.03)

#calculate the kurtosis of the Column for March 2008 (X2008.03)
kurtosis(housing$X2008.03)





#calculate the skewness of the Column for February 2016 (X2016.02)
skewness(housing$X2016.02)

#calculate the kurtosis of the Column for February 2016 (X2016.02)
kurtosis(housing$X2016.02)

#Plot the histogram of the column February 2016 (X.2016.02)
hist(housing$X2016.02)

#Cross Tabulation examples 
#The xtabs() function can display the frequency, or count, of the levels of categorical variables
#xtabs() with One Categorical Variable
xtabs(~RegionName, data=housing)
xtabs(~RegionID, data=housing)
xtabs(~X2008.03, data=housing)
xtabs(~X2016.02, data=housing)

#The xtabs() function can display 
#Two Categorical Variables - Discoving relationships within a dataset

xtabs(~RegionName + StateName, data=housing)
xtabs(~StateName + X2008.03, data=housing)
xtabs(~StateName + X2016.02, data=housing)


#Three Categorical Variables - Creating a Multi-Dimensional Table
xtabs(~RegionName + StateName + X2016.02, data=housing)



#Putting this command in, in order to independently print out various cross tabulations and other commands
options(max.print=999)

# Calculating Covariance
# The covariance of two variables x and y in a data set measures how the two are linearly related. 
# A positive covariance would indicate a positive linear relationship between the variables, and a negative covariance would indicate the opposite. 
StateName = housing$StateName
RegionName = housing$RegionName
X2008.03 = housing$X2008.03
X2016.02 = housing$X2016.02


