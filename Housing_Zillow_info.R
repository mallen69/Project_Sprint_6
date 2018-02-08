#The start of working with the US Contagious Diseases

#Setting my working Directory in order to be in the folder where the US_Contagious_Diseases is.


setwd("C:/Users/micha/Desktop/DevLeague Begins Nov 7 2017/Project_Sprint_5/Sprint 6 Stuff/")

#Loading libraries and reading the CSV file "Zillow" into R.

#Loading the library dplyr in order for the 
library(dplyr)

#Loading the library ggplot2
library(ggplot2)

#Loading the library plyr in order to use the ddply() function
library("plyr")

#loading library car as it may be used for the Anova Calculation
libary("car")

#loading library ggpubr as it used for boxplots
library("ggpubr")

#loading the library multcomp to perform multiple comparison procedures for an ANOVA. glht stands for general linear hypothesis tests. 
library(multcomp)

# Plot weight by group and color by group
library("ggpubr")


#Creating the variable "sick" to represent the ""Zillow.csv"" 
#which was pulled from the Internet
housing <- read.csv("zillow.csv")

#This line of code gives me the list of all the different diseases
#unique(sick$disease) 