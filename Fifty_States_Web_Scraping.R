#To Web Scrape "As a Whole" the entire US 50 States for the tables of Wages, Expenses, and Occupation

#Web crawling and scraping

library("rvest")

library("magrittr")



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

library(readr)

# Create variable with html of Alabama
Alabama <- read_html("http://livingwage.mit.edu/states/01")

# Grab all the tables from the webpage
Alabama_tbls <- html_nodes(Alabama, "table")

#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Alabama_wages <- html_nodes(Alabama, "table.wages_table")

#Parse an html table into a data frame. 
html_table(Alabama_wages)
Alabama_Wages_1 <- html_table(Alabama_wages[[1]])


#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Alabama_expenses <- html_nodes(Alabama, "table.expenses_table")
Alabama_all_tables <- html_nodes(Alabama, "table")

#Parse an html table into a data frame. 
html_table(Alabama_expenses)
Alabama_Expenses_1 <- html_table(Alabama_expenses[[1]])



#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Alabama_occupations <- html_nodes(Alabama, "table.occupations_table")

#Parse an html table into a data frame. 
html_table(Alabama_occupations)
Alabama_Occupations_1 <- html_table(Alabama_occupations[[1]])

#Add the State Name as a Column
Alabama_Occupations_1$State <- "Alabama"
Alabama_Occupations_1 <- Alabama_Occupations_1[,c(3, 1:2)]

parse_number(Alabama_Occupations_1$`Typical Annual Salary`)
Alabama_Total_Occupations <- parse_number(Alabama_Occupations_1$`Typical Annual Salary`)
Alabama_Occupations_1$Typical_Annual_Salary <- Alabama_Total_Occupations



# Create variable with html of Alaska
Alaska <- read_html("http://livingwage.mit.edu/states/02")

# Grab all the tables from the webpage
Alaska_tbls <- html_nodes(Alaska, "table")

#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Alaska_wages <- html_nodes(Alaska, "table.wages_table")

#Parse an html table into a data frame. 
html_table(Alaska_wages)
Alaska_Wages_1 <- html_table(Alaska_wages[[1]])


#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Alaska_expenses <- html_nodes(Alaska, "table.expenses_table")
Alaska_all_tables <- html_nodes(Alaska, "table")

#Parse an html table into a data frame. 
html_table(Alaska_expenses)
Alaska_Expenses_1 <- html_table(Alaska_expenses[[1]])



#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Alaska_occupations <- html_nodes(Alaska, "table.occupations_table")

#Parse an html table into a data frame. 
html_table(Alaska_occupations)
Alaska_Occupations_1 <- html_table(Alaska_occupations[[1]])

#Add the State Name as a Column
Alaska_Occupations_1$State <- "Alaska"
Alaska_Occupations_1 <- Alaska_Occupations_1[,c(3, 1:2)]




# Create variable with html of Arizona
Arizona <- read_html("http://livingwage.mit.edu/states/04")

# Grab all the tables from the webpage
Arizona_tbls <- html_nodes(Arizona, "table")

#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Arizona_wages <- html_nodes(Arizona, "table.wages_table")

#Parse an html table into a data frame. 
html_table(Arizona_wages)
Arizona_Wages_1 <- html_table(Arizona_wages[[1]])


#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Arizona_expenses <- html_nodes(Arizona, "table.expenses_table")
Arizona_all_tables <- html_nodes(Arizona, "table")

#Parse an html table into a data frame. 
html_table(Arizona_expenses)
Arizona_Expenses_1 <- html_table(Arizona_expenses[[1]])



#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Arizona_occupations <- html_nodes(Arizona, "table.occupations_table")

#Parse an html table into a data frame. 
html_table(Arizona_occupations)
Arizona_Occupations_1 <- html_table(Arizona_occupations[[1]])


#Add the State Name as a Column
Arizona_Occupations_1$State <- "Arizona"
Arizona_Occupations_1 <- Arizona_Occupations_1[,c(3, 1:2)]



# Create variable with html of Arkansas
Arkansas <- read_html("http://livingwage.mit.edu/states/05")

# Grab all the tables from the webpage
Arkansas_tbls <- html_nodes(Arkansas, "table")

#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Arkansas_wages <- html_nodes(Arkansas, "table.wages_table")

#Parse an html table into a data frame. 
html_table(Arkansas_wages)
Arkansas_Wages_1 <- html_table(Arkansas_wages[[1]])


#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Arkansas_expenses <- html_nodes(Arkansas, "table.expenses_table")
Arkansas_all_tables <- html_nodes(Arkansas, "table")

#Parse an html table into a data frame. 
html_table(Arkansas_expenses)
Arkansas_Expenses_1 <- html_table(Arkansas_expenses[[1]])



#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Arkansas_occupations <- html_nodes(Arkansas, "table.occupations_table")

#Parse an html table into a data frame. 
html_table(Arkansas_occupations)
Arkansas_Occupations_1 <- html_table(Arkansas_occupations[[1]])

#Add the State Name as a Column
Arkansas_Occupations_1$State <- "Arkansas"
Arkansas_Occupations_1 <- Arkansas_Occupations_1[,c(3, 1:2)]

# Create variable with html of California
California <- read_html("http://livingwage.mit.edu/states/06")

# Grab all the tables from the webpage
California_tbls <- html_nodes(California, "table")

#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
California_wages <- html_nodes(California, "table.wages_table")

#Parse an html table into a data frame. 
html_table(California_wages)
California_Wages_1 <- html_table(California_wages[[1]])


#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
California_expenses <- html_nodes(California, "table.expenses_table")
California_all_tables <- html_nodes(California, "table")

#Parse an html table into a data frame. 
html_table(California_expenses)
California_Expenses_1 <- html_table(California_expenses[[1]])



#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
California_occupations <- html_nodes(California, "table.occupations_table")

#Parse an html table into a data frame. 
html_table(California_occupations)
California_Occupations_1 <- html_table(California_occupations[[1]])

#Add the State Name as a Column
California_Occupations_1$State <- "California"
California_Occupations_1 <- California_Occupations_1[,c(3, 1:2)]

parse_number(California_Occupations_1$`Typical Annual Salary`)
California_Total_Occupations <- parse_number(California_Occupations_1$`Typical Annual Salary`)
California_Occupations_1$Typical_Annual_Salary <- California_Total_Occupations


# Create variable with html of Colorado
Colorado <- read_html("http://livingwage.mit.edu/states/08")

# Grab all the tables from the webpage
Colorado_tbls <- html_nodes(Colorado, "table")

#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Colorado_wages <- html_nodes(Colorado, "table.wages_table")

#Parse an html table into a data frame. 
html_table(Colorado_wages)
Colorado_Wages_1 <- html_table(Colorado_wages[[1]])


#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Colorado_expenses <- html_nodes(Colorado, "table.expenses_table")
Colorado_all_tables <- html_nodes(Colorado, "table")

#Parse an html table into a data frame. 
html_table(Colorado_expenses)
Colorado_Expenses_1 <- html_table(Colorado_expenses[[1]])



#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Colorado_occupations <- html_nodes(Colorado, "table.occupations_table")

#Parse an html table into a data frame. 
html_table(Colorado_occupations)
Colorado_Occupations_1 <- html_table(Colorado_occupations[[1]])


#Add the State Name as a Column
Colorado_Occupations_1$State <- "Colorado"
Colorado_Occupations_1 <- Colorado_Occupations_1[,c(3, 1:2)]


parse_number(Colorado_Occupations_1$`Typical Annual Salary`)
Colorado_Total_Occupations <- parse_number(Colorado_Occupations_1$`Typical Annual Salary`)
Colorado_Occupations_1$Typical_Annual_Salary <- Colorado_Total_Occupations



# Create variable with html of Connecticut
Connecticut <- read_html("http://livingwage.mit.edu/states/09")

# Grab all the tables from the webpage
Connecticut_tbls <- html_nodes(Connecticut, "table")

#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Connecticut_wages <- html_nodes(Connecticut, "table.wages_table")

#Parse an html table into a data frame. 
html_table(Connecticut_wages)
Connecticut_Wages_1 <- html_table(Connecticut_wages[[1]])


#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Connecticut_expenses <- html_nodes(Connecticut, "table.expenses_table")
Connecticut_all_tables <- html_nodes(Connecticut, "table")

#Parse an html table into a data frame. 
html_table(Connecticut_expenses)
Connecticut_Expenses_1 <- html_table(Connecticut_expenses[[1]])



#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Connecticut_occupations <- html_nodes(Connecticut, "table.occupations_table")

#Parse an html table into a data frame. 
html_table(Connecticut_occupations)
Connecticut_Occupations_1 <- html_table(Connecticut_occupations[[1]])

#Add the State Name as a Column
Connecticut_Occupations_1$State <- "Connecticut"
Connecticut_Occupations_1 <- Connecticut_Occupations_1[,c(3, 1:2)]



# Create variable with html of Delaware
Delaware <- read_html("http://livingwage.mit.edu/states/09")

# Grab all the tables from the webpage
Delaware_tbls <- html_nodes(Delaware, "table")

#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Delaware_wages <- html_nodes(Delaware, "table.wages_table")

#Parse an html table into a data frame. 
html_table(Delaware_wages)
Delaware_Wages_1 <- html_table(Delaware_wages[[1]])


#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Delaware_expenses <- html_nodes(Delaware, "table.expenses_table")
Delaware_all_tables <- html_nodes(Delaware, "table")

#Parse an html table into a data frame. 
html_table(Delaware_expenses)
Delaware_Expenses_1 <- html_table(Delaware_expenses[[1]])



#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Delaware_occupations <- html_nodes(Delaware, "table.occupations_table")

#Parse an html table into a data frame. 
html_table(Delaware_occupations)
Delaware_Occupations_1 <- html_table(Delaware_occupations[[1]])

#Add the State Name as a Column
Delaware_Occupations_1$State <- "Delaware"
Delaware_Occupations_1 <- Delaware_Occupations_1[,c(3, 1:2)]



# Create variable with html of District_of_Columbia
District_of_Columbia <- read_html("http://livingwage.mit.edu/states/11")

# Grab all the tables from the webpage
District_of_Columbia_tbls <- html_nodes(Delaware, "table")

#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
District_of_Columbia_wages <- html_nodes(Delaware, "table.wages_table")

#Parse an html table into a data frame. 
html_table(District_of_Columbia_wages)
District_of_Columbia_Wages_1 <- html_table(District_of_Columbia_wages[[1]])


#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
District_of_Columbia_expenses <- html_nodes(Delaware, "table.expenses_table")
District_of_Columbia_all_tables <- html_nodes(Delaware, "table")

#Parse an html table into a data frame. 
html_table(District_of_Columbia_expenses)
District_of_Columbia_Expenses_1 <- html_table(District_of_Columbia_expenses[[1]])



#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
District_of_Columbia_occupations <- html_nodes(Delaware, "table.occupations_table")

#Parse an html table into a data frame. 
html_table(District_of_Columbia_occupations)
District_of_Columbia_Occupations_1 <- html_table(District_of_Columbia_occupations[[1]])


#Add the State Name as a Column
District_of_Columbia_Occupations_1$State <- "District_of_Columbia"
District_of_Columbia_Occupations_1 <- District_of_Columbia_Occupations_1[,c(3, 1:2)]


parse_number(District_of_Columbia_Occupations_1$`Typical Annual Salary`)
District_of_Columbia_Total_Occupations <- parse_number(District_of_Columbia_Occupations_1$`Typical Annual Salary`)
District_of_Columbia_Occupations_1$Typical_Annual_Salary <- Colorado_Total_Occupations


#Create variable with html of Florida
Florida <- read_html("http://livingwage.mit.edu/states/12")

#Grab all the tables from the webpage
Florida_tbls <- html_nodes(Florida, "table")

#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Florida_wages <- html_nodes(Florida, "table.wages_table")

#Parse an html table into a data frame. 
html_table(Florida_wages)
Florida_Wages_1 <- html_table(Florida_wages[[1]])


#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Florida_expenses <- html_nodes(Florida, "table.expenses_table")
Florida_all_tables <- html_nodes(Florida, "table")

#Parse an html table into a data frame. 
html_table(Florida_expenses)
Florida_Expenses_1 <- html_table(Florida_expenses[[1]])


#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Florida_occupations <- html_nodes(Florida, "table.occupations_table")

#Parse an html table into a data frame. 
html_table(Florida_occupations)
Florida_Occupations_1 <- html_table(Florida_occupations[[1]])

#Add the State Name as a Column
Florida_Occupations_1$State <- "Florida"
Florida_Occupations_1 <- Florida_Occupations_1[,c(3, 1:2)]



#Create variable with html of Georgia
Georgia <- read_html("http://livingwage.mit.edu/states/13")

#Grab all the tables from the webpage
Georgia_tbls <- html_nodes(Georgia, "table")

#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Georgia_wages <- html_nodes(Georgia, "table.wages_table")

#Parse an html table into a data frame. 
html_table(Georgia_wages)
Georgia_Wages_1 <- html_table(Georgia_wages[[1]])


#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Georgia_expenses <- html_nodes(Georgia, "table.expenses_table")
Georgia_all_tables <- html_nodes(Georgia, "table")

#Parse an html table into a data frame. 
html_table(Georgia_expenses)
Georgia_Expenses_1 <- html_table(Georgia_expenses[[1]])



#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Georgia_occupations <- html_nodes(Georgia, "table.occupations_table")

#Parse an html table into a data frame. 
html_table(Georgia_occupations)
Georgia_Occupations_1 <- html_table(Georgia_occupations[[1]])


#Add the State Name as a Column
Georgia_Occupations_1$State <- "Georgia"
Georgia_Occupations_1 <- Georgia_Occupations_1[,c(3, 1:2)]


#Create variable with html of Hawaii
Hawaii <- read_html("http://livingwage.mit.edu/states/15")

#Grab all the tables from the webpage
Hawaii_tbls <- html_nodes(Hawaii, "table")

#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Hawaii_wages <- html_nodes(Hawaii, "table.wages_table")

#Parse an html table into a data frame. 
html_table(Hawaii_wages)
Hawaii_Wages_1 <- html_table(Hawaii_wages[[1]])


#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Hawaii_expenses <- html_nodes(Hawaii, "table.expenses_table")
Hawaii_all_tables <- html_nodes(Hawaii, "table")

#Parse an html table into a data frame. 
html_table(Hawaii_expenses)
Hawaii_Expenses_1 <- html_table(Hawaii_expenses[[1]])



#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Hawaii_occupations <- html_nodes(Hawaii, "table.occupations_table")

#Parse an html table into a data frame. 
html_table(Hawaii_occupations)
Hawaii_Occupations_1 <- html_table(Hawaii_occupations[[1]])


#Add the State Name as a Column
Hawaii_Occupations_1$State <- "Hawaii"
Hawaii_Occupations_1 <- Hawaii_Occupations_1[,c(3, 1:2)]


parse_number(Hawaii_Occupations_1$`Typical Annual Salary`)
Hawaii_Total_Occupations <- parse_number(Hawaii_Occupations_1$`Typical Annual Salary`)
Hawaii_Occupations_1$Typical_Annual_Salary <- Hawaii_Total_Occupations

#Create variable with html of Idaho
Idaho <- read_html("http://livingwage.mit.edu/states/16")

#Grab all the tables from the webpage
Idaho_tbls <- html_nodes(Idaho, "table")

#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Idaho_wages <- html_nodes(Idaho, "table.wages_table")

#Parse an html table into a data frame. 
html_table(Idaho_wages)
Idaho_Wages_1 <- html_table(Idaho_wages[[1]])


#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Idaho_expenses <- html_nodes(Idaho, "table.expenses_table")
Idaho_all_tables <- html_nodes(Idaho, "table")

#Parse an html table into a data frame. 
html_table(Idaho_expenses)
Idaho_Expenses_1 <- html_table(Idaho_expenses[[1]])



#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Idaho_occupations <- html_nodes(Idaho, "table.occupations_table")

#Parse an html table into a data frame. 
html_table(Idaho_occupations)
Idaho_Occupations_1 <- html_table(Idaho_occupations[[1]])


#Add the State Name as a Column
Idaho_Occupations_1$State <- "Idaho"
Idaho_Occupations_1 <- Idaho_Occupations_1[,c(3, 1:2)]



#Create variable with html of Illinois
Illinois <- read_html("http://livingwage.mit.edu/states/17")

#Grab all the tables from the webpage
Illinois_tbls <- html_nodes(Illinois, "table")

#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Illinois_wages <- html_nodes(Illinois, "table.wages_table")

#Parse an html table into a data frame. 
html_table(Illinois_wages)
Illinois_Wages_1 <- html_table(Illinois_wages[[1]])


#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Illinois_expenses <- html_nodes(Illinois, "table.expenses_table")
Illinois_all_tables <- html_nodes(Illinois, "table")

#Parse an html table into a data frame. 
html_table(Illinois_expenses)
Illinois_Expenses_1 <- html_table(Illinois_expenses[[1]])



#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Illinois_occupations <- html_nodes(Illinois, "table.occupations_table")

#Parse an html table into a data frame. 
html_table(Illinois_occupations)
Illinois_Occupations_1 <- html_table(Illinois_occupations[[1]])

#Add the State Name as a Column
Illinois_Occupations_1$State <- "Illinois"
Illinois_Occupations_1 <- Illinois_Occupations_1[,c(3, 1:2)]



#Create variable with html of Indiana
Indiana <- read_html("http://livingwage.mit.edu/states/18")

#Grab all the tables from the webpage
Indiana_tbls <- html_nodes(Indiana, "table")

#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Indiana_wages <- html_nodes(Indiana, "table.wages_table")

#Parse an html table into a data frame. 
html_table(Indiana_wages)
Indiana_Wages_1 <- html_table(Indiana_wages[[1]])


#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Indiana_expenses <- html_nodes(Indiana, "table.expenses_table")
Indiana_all_tables <- html_nodes(Indiana, "table")

#Parse an html table into a data frame. 
html_table(Indiana_expenses)
Indiana_Expenses_1 <- html_table(Indiana_expenses[[1]])



#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Indiana_occupations <- html_nodes(Indiana, "table.occupations_table")

#Parse an html table into a data frame. 
html_table(Indiana_occupations)
Indiana_Occupations_1 <- html_table(Indiana_occupations[[1]])


#Add the State Name as a Column
Indiana_Occupations_1$State <- "Indiana"
Indiana_Occupations_1 <- Indiana_Occupations_1[,c(3, 1:2)]



#Create variable with html of Iowa
Iowa <- read_html("http://livingwage.mit.edu/states/19")

#Grab all the tables from the webpage
Iowa_tbls <- html_nodes(Iowa, "table")

#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Iowa_wages <- html_nodes(Iowa, "table.wages_table")

#Parse an html table into a data frame. 
html_table(Iowa_wages)
Iowa_Wages_1 <- html_table(Iowa_wages[[1]])


#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Iowa_expenses <- html_nodes(Iowa, "table.expenses_table")
Iowa_all_tables <- html_nodes(Iowa, "table")

#Parse an html table into a data frame. 
html_table(Iowa_expenses)
Iowa_Expenses_1 <- html_table(Iowa_expenses[[1]])



#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Iowa_occupations <- html_nodes(Iowa, "table.occupations_table")

#Parse an html table into a data frame. 
html_table(Iowa_occupations)
Iowa_Occupations_1 <- html_table(Iowa_occupations[[1]])

#Add the State Name as a Column
Iowa_Occupations_1$State <- "Iowa"
Iowa_Occupations_1 <- Iowa_Occupations_1[,c(3, 1:2)]



#Create variable with html of Kansas
Kansas <- read_html("http://livingwage.mit.edu/states/20")

#Grab all the tables from the webpage
Kansas_tbls <- html_nodes(Kansas, "table")

#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Kansas_wages <- html_nodes(Kansas, "table.wages_table")

#Parse an html table into a data frame. 
html_table(Kansas_wages)
Kansas_Wages_1 <- html_table(Kansas_wages[[1]])


#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Kansas_expenses <- html_nodes(Kansas, "table.expenses_table")
Kansas_all_tables <- html_nodes(Kansas, "table")

#Parse an html table into a data frame. 
html_table(Kansas_expenses)
Kansas_Expenses_1 <- html_table(Kansas_expenses[[1]])



#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Kansas_occupations <- html_nodes(Kansas, "table.occupations_table")

#Parse an html table into a data frame. 
html_table(Kansas_occupations)
Kansas_Occupations_1 <- html_table(Kansas_occupations[[1]])

#Add the State Name as a Column
Kansas_Occupations_1$State <- "Kansas"
Kansas_Occupations_1 <- Kansas_Occupations_1[,c(3, 1:2)]



#Create variable with html of Kentucky
Kentucky <- read_html("http://livingwage.mit.edu/states/21")

#Grab all the tables from the webpage
Kentucky_tbls <- html_nodes(Kentucky, "table")

#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Kentucky_wages <- html_nodes(Kentucky, "table.wages_table")

#Parse an html table into a data frame. 
html_table(Kentucky_wages)
Kentucky_Wages_1 <- html_table(Kentucky_wages[[1]])


#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Kentucky_expenses <- html_nodes(Kentucky, "table.expenses_table")
Kentucky_all_tables <- html_nodes(Kentucky, "table")

#Parse an html table into a data frame. 
html_table(Kentucky_expenses)
Kentucky_Expenses_1 <- html_table(Kentucky_expenses[[1]])



#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Kentucky_occupations <- html_nodes(Kentucky, "table.occupations_table")

#Parse an html table into a data frame. 
html_table(Kentucky_occupations)
Kentucky_Occupations_1 <- html_table(Kentucky_occupations[[1]])


#Add the State Name as a Column
Kentucky_Occupations_1$State <- "Kentucky"
Kentucky_Occupations_1 <- Kentucky_Occupations_1[,c(3, 1:2)]


#Create variable with html of Louisiana
Louisiana <- read_html("http://livingwage.mit.edu/states/22")

#Grab all the tables from the webpage
Louisiana_tbls <- html_nodes(Louisiana, "table")

#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Louisiana_wages <- html_nodes(Louisiana, "table.wages_table")

#Parse an html table into a data frame. 
html_table(Louisiana_wages)
Louisiana_Wages_1 <- html_table(Louisiana_wages[[1]])


#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Louisiana_expenses <- html_nodes(Louisiana, "table.expenses_table")
Louisiana_all_tables <- html_nodes(Louisiana, "table")

#Parse an html table into a data frame. 
html_table(Louisiana_expenses)
Louisiana_Expenses_1 <- html_table(Louisiana_expenses[[1]])



#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Louisiana_occupations <- html_nodes(Louisiana, "table.occupations_table")

#Parse an html table into a data frame. 
html_table(Louisiana_occupations)
Louisiana_Occupations_1 <- html_table(Louisiana_occupations[[1]])

#Add the State Name as a Column
Louisiana_Occupations_1$State <- "Louisiana"
Louisiana_Occupations_1 <- Louisiana_Occupations_1[,c(3, 1:2)]



#Create variable with html of Maine
Maine <- read_html("http://livingwage.mit.edu/states/23")

#Grab all the tables from the webpage
Maine_tbls <- html_nodes(Maine, "table")

#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Maine_wages <- html_nodes(Maine, "table.wages_table")

#Parse an html table into a data frame. 
html_table(Maine_wages)
Maine_Wages_1 <- html_table(Maine_wages[[1]])


#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Maine_expenses <- html_nodes(Maine, "table.expenses_table")
Maine_all_tables <- html_nodes(Maine, "table")

#Parse an html table into a data frame. 
html_table(Maine_expenses)
Maine_Expenses_1 <- html_table(Maine_expenses[[1]])



#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Maine_occupations <- html_nodes(Maine, "table.occupations_table")

#Parse an html table into a data frame. 
html_table(Maine_occupations)
Maine_Occupations_1 <- html_table(Maine_occupations[[1]])


#Add the State Name as a Column
Maine_Occupations_1$State <- "Maine"
Maine_Occupations_1 <- Maine_Occupations_1[,c(3, 1:2)]


#Create variable with html of Maryland
Maryland <- read_html("http://livingwage.mit.edu/states/24")

#Grab all the tables from the webpage
Maryland_tbls <- html_nodes(Maryland, "table")

#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Maryland_wages <- html_nodes(Maryland, "table.wages_table")

#Parse an html table into a data frame. 
html_table(Maryland_wages)
Maryland_Wages_1 <- html_table(Maryland_wages[[1]])


#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Maryland_expenses <- html_nodes(Maryland, "table.expenses_table")
Maryland_all_tables <- html_nodes(Maryland, "table")

#Parse an html table into a data frame. 
html_table(Maryland_expenses)
Maryland_Expenses_1 <- html_table(Maryland_expenses[[1]])



#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Maryland_occupations <- html_nodes(Maryland, "table.occupations_table")

#Parse an html table into a data frame. 
html_table(Maryland_occupations)
Maryland_Occupations_1 <- html_table(Maryland_occupations[[1]])

#Add the State Name as a Column
Maryland_Occupations_1$State <- "Maryland"
Maryland_Occupations_1 <- Maryland_Occupations_1[,c(3, 1:2)]



#Create variable with html of Massachusetts
Massachusetts <- read_html("http://livingwage.mit.edu/states/25")

#Grab all the tables from the webpage
Massachusetts_tbls <- html_nodes(Massachusetts, "table")

#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Massachusetts_wages <- html_nodes(Massachusetts, "table.wages_table")

#Parse an html table into a data frame. 
html_table(Massachusetts_wages)
Massachusetts_Wages_1 <- html_table(Massachusetts_wages[[1]])


#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Massachusetts_expenses <- html_nodes(Massachusetts, "table.expenses_table")
Massachusetts_all_tables <- html_nodes(Massachusetts, "table")

#Parse an html table into a data frame. 
html_table(Massachusetts_expenses)
Massachusetts_Expenses_1 <- html_table(Massachusetts_expenses[[1]])



#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Massachusetts_occupations <- html_nodes(Massachusetts, "table.occupations_table")

#Parse an html table into a data frame. 
html_table(Massachusetts_occupations)
Massachusetts_Occupations_1 <- html_table(Massachusetts_occupations[[1]])

#Add the State Name as a Column
Massachusetts_Occupations_1$State <- "Massachusetts"
Massachusetts_Occupations_1 <- Massachusetts_Occupations_1[,c(3, 1:2)]



#Create variable with html of Michigan
Michigan <- read_html("http://livingwage.mit.edu/states/26")

#Grab all the tables from the webpage
Michigan_tbls <- html_nodes(Michigan, "table")

#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Michigan_wages <- html_nodes(Michigan, "table.wages_table")


#Parse an html table into a data frame. 
html_table(Michigan_wages)
Michigan_Wages_1 <- html_table(Michigan_wages[[1]])


#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Michigan_expenses <- html_nodes(Michigan, "table.expenses_table")
Michigan_all_tables <- html_nodes(Michigan, "table")

#Parse an html table into a data frame. 
html_table(Michigan_expenses)
Michigan_Expenses_1 <- html_table(Michigan_expenses[[1]])



#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Michigan_occupations <- html_nodes(Michigan, "table.occupations_table")

#Parse an html table into a data frame. 
html_table(Michigan_occupations)
Michigan_Occupations_1 <- html_table(Michigan_occupations[[1]])


#Add the State Name as a Column
Michigan_Occupations_1$State <- "Michigan"
Michigan_Occupations_1 <- Michigan_Occupations_1[,c(3, 1:2)]


#Create variable with html of Minnesota
Minnesota <- read_html("http://livingwage.mit.edu/states/27")

#Grab all the tables from the webpage
Minnesota_tbls <- html_nodes(Minnesota, "table")

#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Minnesota_wages <- html_nodes(Minnesota, "table.wages_table")


#Parse an html table into a data frame. 
html_table(Minnesota_wages)
Minnesota_Wages_1 <- html_table(Minnesota_wages[[1]])


#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Minnesota_expenses <- html_nodes(Minnesota, "table.expenses_table")
Minnesota_all_tables <- html_nodes(Minnesota, "table")

#Parse an html table into a data frame. 
html_table(Minnesota_expenses)
Minnesota_Expenses_1 <- html_table(Minnesota_expenses[[1]])



#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Minnesota_occupations <- html_nodes(Minnesota, "table.occupations_table")

#Parse an html table into a data frame. 
html_table(Minnesota_occupations)
Minnesota_Occupations_1 <- html_table(Minnesota_occupations[[1]])


#Add the State Name as a Column
Minnesota_Occupations_1$State <- "Minnesota"
Minnesota_Occupations_1 <- Minnesota_Occupations_1[,c(3, 1:2)]



#Create variable with html of Mississippi
Mississippi <- read_html("http://livingwage.mit.edu/states/28")

#Grab all the tables from the webpage
Mississippi_tbls <- html_nodes(Mississippi, "table")

#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Mississippi_wages <- html_nodes(Mississippi, "table.wages_table")


#Parse an html table into a data frame. 
html_table(Mississippi_wages)
Mississippi_Wages_1 <- html_table(Mississippi_wages[[1]])


#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Mississippi_expenses <- html_nodes(Mississippi, "table.expenses_table")
Mississippi_all_tables <- html_nodes(Mississippi, "table")

#Parse an html table into a data frame. 
html_table(Mississippi_expenses)
Mississippi_Expenses_1 <- html_table(Mississippi_expenses[[1]])



#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Mississippi_occupations <- html_nodes(Mississippi, "table.occupations_table")

#Parse an html table into a data frame. 
html_table(Mississippi_occupations)
Mississippi_Occupations_1 <- html_table(Mississippi_occupations[[1]])

#Add the State Name as a Column
Mississippi_Occupations_1$State <- "Mississippi"
Mississippi_Occupations_1 <- Mississippi_Occupations_1[,c(3, 1:2)]

parse_number(Mississippi_Occupations_1$`Typical Annual Salary`)
Mississippi_Total_Occupations <- parse_number(Mississippi_Occupations_1$`Typical Annual Salary`)
Mississippi_Occupations_1$Typical_Annual_Salary <- Mississippi_Total_Occupations


#Create variable with html of Missouri
Missouri <- read_html("http://livingwage.mit.edu/states/29")

#Grab all the tables from the webpage
Missouri_tbls <- html_nodes(Missouri, "table")

#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Missouri_wages <- html_nodes(Missouri, "table.wages_table")


#Parse an html table into a data frame. 
html_table(Missouri_wages)
Missouri_Wages_1 <- html_table(Missouri_wages[[1]])


#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Missouri_expenses <- html_nodes(Missouri, "table.expenses_table")
Missouri_all_tables <- html_nodes(Missouri, "table")

#Parse an html table into a data frame. 
html_table(Missouri_expenses)
Missouri_Expenses_1 <- html_table(Missouri_expenses[[1]])



#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Missouri_occupations <- html_nodes(Missouri, "table.occupations_table")

#Parse an html table into a data frame. 
html_table(Missouri_occupations)
Missouri_Occupations_1 <- html_table(Missouri_occupations[[1]])

#Add the State Name as a Column
Missouri_Occupations_1$State <- "Missouri"
Missouri_Occupations_1 <- Missouri_Occupations_1[,c(3, 1:2)]



#Create variable with html of Montana
Montana <- read_html("http://livingwage.mit.edu/states/30")

#Grab all the tables from the webpage
Montana_tbls <- html_nodes(Montana, "table")

#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Montana_wages <- html_nodes(Montana, "table.wages_table")


#Parse an html table into a data frame. 
html_table(Montana_wages)
Montana_Wages_1 <- html_table(Montana_wages[[1]])


#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Montana_expenses <- html_nodes(Montana, "table.expenses_table")
Montana_all_tables <- html_nodes(Montana, "table")

#Parse an html table into a data frame. 
html_table(Montana_expenses)
Montana_Expenses_1 <- html_table(Montana_expenses[[1]])



#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Montana_occupations <- html_nodes(Montana, "table.occupations_table")

#Parse an html table into a data frame. 
html_table(Montana_occupations)
Montana_Occupations_1 <- html_table(Montana_occupations[[1]])

#Add the State Name as a Column
Montana_Occupations_1$State <- "Montana"
Montana_Occupations_1 <- Montana_Occupations_1[,c(3, 1:2)]



#Create variable with html of Nebraska
Nebraska <- read_html("http://livingwage.mit.edu/states/31")

#Grab all the tables from the webpage
Nebraska_tbls <- html_nodes(Nebraska, "table")

#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Nebraska_wages <- html_nodes(Nebraska, "table.wages_table")


#Parse an html table into a data frame. 
html_table(Nebraska_wages)
Nebraska_Wages_1 <- html_table(Nebraska_wages[[1]])


#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Nebraska_expenses <- html_nodes(Nebraska, "table.expenses_table")
Nebraska_all_tables <- html_nodes(Nebraska, "table")

#Parse an html table into a data frame. 
html_table(Nebraska_expenses)
Nebraska_Expenses_1 <- html_table(Nebraska_expenses[[1]])



#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Nebraska_occupations <- html_nodes(Nebraska, "table.occupations_table")

#Parse an html table into a data frame. 
html_table(Nebraska_occupations)
Nebraska_Occupations_1 <- html_table(Nebraska_occupations[[1]])

#Add the State Name as a Column
Nebraska_Occupations_1$State <- "Nebraska"
Nebraska_Occupations_1 <- Nebraska_Occupations_1[,c(3, 1:2)]


#Create variable with html of Nevada
Nevada <- read_html("http://livingwage.mit.edu/states/32")

#Grab all the tables from the webpage
Nevada_tbls <- html_nodes(Nevada, "table")

#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Nevada_wages <- html_nodes(Nevada, "table.wages_table")


#Parse an html table into a data frame. 
html_table(Nevada_wages)
Nevada_Wages_1 <- html_table(Nevada_wages[[1]])


#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Nevada_expenses <- html_nodes(Nevada, "table.expenses_table")
Nevada_all_tables <- html_nodes(Nevada, "table")

#Parse an html table into a data frame. 
html_table(Nevada_expenses)
Nevada_Expenses_1 <- html_table(Nevada_expenses[[1]])



#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Nevada_occupations <- html_nodes(Nevada, "table.occupations_table")

#Parse an html table into a data frame. 
html_table(Nevada_occupations)
Nevada_Occupations_1 <- html_table(Nevada_occupations[[1]])


#Add the State Name as a Column
Nevada_Occupations_1$State <- "Nevada"
Nevada_Occupations_1 <- Nevada_Occupations_1[,c(3, 1:2)]


#Create variable with html of New_Hampshire
New_Hampshire <- read_html("http://livingwage.mit.edu/states/33")

# Grab all the tables from the webpage
New_Hampshire_tbls <- html_nodes(New_Hampshire, "table")

#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
New_Hampshire_wages <- html_nodes(New_Hampshire, "table.wages_table")

#Parse an html table into a data frame. 
html_table(New_Hampshire_wages)
New_Hampshire_Wages_1 <- html_table(New_Hampshire_wages[[1]])


#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
New_Hampshire_expenses <- html_nodes(New_Hampshire, "table.expenses_table")
New_Hampshire_all_tables <- html_nodes(New_Hampshire, "table")

#Parse an html table into a data frame. 
html_table(New_Hampshire_expenses)
New_Hampshire_Expenses_1 <- html_table(New_Hampshire_expenses[[1]])



#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
New_Hampshire_occupations <- html_nodes(New_Hampshire, "table.occupations_table")

#Parse an html table into a data frame. 
html_table(New_Hampshire_occupations)
New_Hampshire_Occupations_1 <- html_table(New_Hampshire_occupations[[1]])

#Add the State Name as a Column
New_Hampshire_Occupations_1$State <- "New_Hampshire"
New_Hampshire_Occupations_1 <- New_Hampshire_Occupations_1[,c(3, 1:2)]



#Create variable with html of New_Jersey
New_Jersey <- read_html("http://livingwage.mit.edu/states/34")

# Grab all the tables from the webpage
New_Jersey_tbls <- html_nodes(New_Jersey, "table")

#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
New_Jersey_wages <- html_nodes(New_Jersey, "table.wages_table")

#Parse an html table into a data frame. 
html_table(New_Jersey_wages)
New_Jersey_Wages_1 <- html_table(New_Jersey_wages[[1]])


#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
New_Jersey_expenses <- html_nodes(New_Jersey, "table.expenses_table")
New_Jersey_all_tables <- html_nodes(New_Jersey, "table")

#Parse an html table into a data frame. 
html_table(New_Jersey_expenses)
New_Jersey_Expenses_1 <- html_table(New_Jersey_expenses[[1]])



#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
New_Jersey_occupations <- html_nodes(New_Jersey, "table.occupations_table")

#Parse an html table into a data frame. 
html_table(New_Jersey_occupations)
New_Jersey_Occupations_1 <- html_table(New_Jersey_occupations[[1]])

#Add the State Name as a Column
New_Jersey_Occupations_1$State <- "New_Jersey"
New_Jersey_Occupations_1 <- New_Jersey_Occupations_1[,c(3, 1:2)]



#Create variable with html of New_Mexico
New_Mexico <- read_html("http://livingwage.mit.edu/states/35")

# Grab all the tables from the webpage
New_Mexico_tbls <- html_nodes(New_Mexico, "table")

#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
New_Mexico_wages <- html_nodes(New_Mexico, "table.wages_table")

#Parse an html table into a data frame. 
html_table(New_Mexico_wages)
New_Mexico_Wages_1 <- html_table(New_Mexico_wages[[1]])


#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
New_Mexico_expenses <- html_nodes(New_Mexico, "table.expenses_table")
New_Mexico_all_tables <- html_nodes(New_Mexico, "table")

#Parse an html table into a data frame. 
html_table(New_Mexico_expenses)
New_Mexico_Expenses_1 <- html_table(New_Mexico_expenses[[1]])



#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
New_Mexico_occupations <- html_nodes(New_Mexico, "table.occupations_table")

#Parse an html table into a data frame. 
html_table(New_Mexico_occupations)
New_Mexico_Occupations_1 <- html_table(New_Mexico_occupations[[1]])

#Add the State Name as a Column
New_Mexico_Occupations_1$State <- "New_Mexico"
New_Mexico_Occupations_1 <- New_Mexico_Occupations_1[,c(3, 1:2)]



#Create variable with html of New_York
New_York <- read_html("http://livingwage.mit.edu/states/36")

# Grab all the tables from the webpage
New_York_tbls <- html_nodes(New_York, "table")

#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
New_York_wages <- html_nodes(New_York, "table.wages_table")

#Parse an html table into a data frame. 
html_table(New_York_wages)
New_York_Wages_1 <- html_table(New_York_wages[[1]])


#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
New_York_expenses <- html_nodes(New_York, "table.expenses_table")
New_York_all_tables <- html_nodes(New_York, "table")

#Parse an html table into a data frame. 
html_table(New_York_expenses)
New_York_Expenses_1 <- html_table(New_York_expenses[[1]])



#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
New_York_occupations <- html_nodes(New_York, "table.occupations_table")

#Parse an html table into a data frame. 
html_table(New_York_occupations)
New_York_Occupations_1 <- html_table(New_York_occupations[[1]])

#Add the State Name as a Column
New_York_Occupations_1$State <- "New_York"
New_York_Occupations_1 <- New_York_Occupations_1[,c(3, 1:2)]



#Create variable with html of North_Carolina
North_Carolina <- read_html("http://livingwage.mit.edu/states/37")

# Grab all the tables from the webpage
North_Carolina_tbls <- html_nodes(North_Carolina, "table")

#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
North_Carolina_wages <- html_nodes(North_Carolina, "table.wages_table")

#Parse an html table into a data frame. 
html_table(North_Carolina_wages)
North_Carolina_Wages_1 <- html_table(North_Carolina_wages[[1]])


#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
North_Carolina_expenses <- html_nodes(North_Carolina, "table.expenses_table")
North_Carolina_all_tables <- html_nodes(North_Carolina, "table")

#Parse an html table into a data frame. 
html_table(North_Carolina_expenses)
North_Carolina_Expenses_1 <- html_table(North_Carolina_expenses[[1]])



#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
North_Carolina_occupations <- html_nodes(North_Carolina, "table.occupations_table")

#Parse an html table into a data frame. 
html_table(North_Carolina_occupations)
North_Carolina_Occupations_1 <- html_table(North_Carolina_occupations[[1]])

#Add the State Name as a Column
North_Carolina_Occupations_1$State <- "North_Carolina"
North_Carolina_Occupations_1 <- North_Carolina_Occupations_1[,c(3, 1:2)]



#Create variable with html of North_Dakota
North_Dakota <- read_html("http://livingwage.mit.edu/states/38")

# Grab all the tables from the webpage
North_Dakota_tbls <- html_nodes(North_Dakota, "table")

#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
North_Dakota_wages <- html_nodes(North_Dakota, "table.wages_table")

#Parse an html table into a data frame. 
html_table(North_Dakota_wages)
North_Dakota_Wages_1 <- html_table(North_Dakota_wages[[1]])


#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
North_Dakota_expenses <- html_nodes(North_Dakota, "table.expenses_table")
North_Dakota_all_tables <- html_nodes(North_Dakota, "table")

#Parse an html table into a data frame. 
html_table(North_Dakota_expenses)
North_Dakota_Expenses_1 <- html_table(North_Dakota_expenses[[1]])



#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
North_Dakota_occupations <- html_nodes(North_Dakota, "table.occupations_table")

#Parse an html table into a data frame. 
html_table(North_Dakota_occupations)
North_Dakota_Occupations_1 <- html_table(North_Dakota_occupations[[1]])

#Add the State Name as a Column
North_Dakota_Occupations_1$State <- "North_Dakota"
North_Dakota_Occupations_1 <- North_Dakota_Occupations_1[,c(3, 1:2)]


#Create variable with html of Ohio
Ohio <- read_html("http://livingwage.mit.edu/states/39")

# Grab all the tables from the webpage
Ohio_tbls <- html_nodes(Ohio, "table")

#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Ohio_wages <- html_nodes(Ohio, "table.wages_table")

#Parse an html table into a data frame. 
html_table(Ohio_wages)
Ohio_Wages_1 <- html_table(Ohio_wages[[1]])


#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Ohio_expenses <- html_nodes(Ohio, "table.expenses_table")
Ohio_all_tables <- html_nodes(Ohio, "table")

#Parse an html table into a data frame. 
html_table(Ohio_expenses)
Ohio_Expenses_1 <- html_table(Ohio_expenses[[1]])



#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Ohio_occupations <- html_nodes(Ohio, "table.occupations_table")

#Parse an html table into a data frame. 
html_table(Ohio_occupations)
Ohio_Occupations_1 <- html_table(Ohio_occupations[[1]])

#Add the State Name as a Column
Ohio_Occupations_1$State <- "Ohio"
Ohio_Occupations_1 <- Ohio_Occupations_1[,c(3, 1:2)]



#Create variable with html of Oklahoma
Oklahoma <- read_html("http://livingwage.mit.edu/states/40")

# Grab all the tables from the webpage
Oklahoma_tbls <- html_nodes(Oklahoma, "table")

#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Oklahoma_wages <- html_nodes(Oklahoma, "table.wages_table")

#Parse an html table into a data frame. 
html_table(Oklahoma_wages)
Oklahoma_Wages_1 <- html_table(Oklahoma_wages[[1]])


#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Oklahoma_expenses <- html_nodes(Oklahoma, "table.expenses_table")
Oklahoma_all_tables <- html_nodes(Oklahoma, "table")

#Parse an html table into a data frame. 
html_table(Oklahoma_expenses)
Oklahoma_Expenses_1 <- html_table(Oklahoma_expenses[[1]])


#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Oklahoma_occupations <- html_nodes(Oklahoma, "table.occupations_table")

#Parse an html table into a data frame. 
html_table(Oklahoma_occupations)
Oklahoma_Occupations_1 <- html_table(Oklahoma_occupations[[1]])

#Add the State Name as a Column
Oklahoma_Occupations_1$State <- "Oklahoma"
Oklahoma_Occupations_1 <- Oklahoma_Occupations_1[,c(3, 1:2)]



#Create variable with html of Oregon
Oregon <- read_html("http://livingwage.mit.edu/states/41")

# Grab all the tables from the webpage
Oregon_tbls <- html_nodes(Oregon, "table")

#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Oregon_wages <- html_nodes(Oregon, "table.wages_table")

#Parse an html table into a data frame. 
html_table(Oregon_wages)
Oregon_Wages_1 <- html_table(Oregon_wages[[1]])


#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Oregon_expenses <- html_nodes(Oregon, "table.expenses_table")
Oregon_all_tables <- html_nodes(Oregon, "table")

#Parse an html table into a data frame. 
html_table(Oregon_expenses)
Oregon_Expenses_1 <- html_table(Oregon_expenses[[1]])


#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Oregon_occupations <- html_nodes(Oregon, "table.occupations_table")

#Parse an html table into a data frame. 
html_table(Oregon_occupations)
Oregon_Occupations_1 <- html_table(Oregon_occupations[[1]])

#Add the State Name as a Column
Oregon_Occupations_1$State <- "Oregon"
Oregon_Occupations_1 <- Oregon_Occupations_1[,c(3, 1:2)]



#Create variable with html of Pennsylvania
Pennsylvania <- read_html("http://livingwage.mit.edu/states/42")

# Grab all the tables from the webpage
Pennsylvania_tbls <- html_nodes(Pennsylvania, "table")

#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Pennsylvania_wages <- html_nodes(Pennsylvania, "table.wages_table")

#Parse an html table into a data frame. 
html_table(Pennsylvania_wages)
Pennsylvania_Wages_1 <- html_table(Pennsylvania_wages[[1]])


#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Pennsylvania_expenses <- html_nodes(Pennsylvania, "table.expenses_table")
Pennsylvania_all_tables <- html_nodes(Pennsylvania, "table")

#Parse an html table into a data frame. 
html_table(Pennsylvania_expenses)
Pennsylvania_Expenses_1 <- html_table(Pennsylvania_expenses[[1]])



#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Pennsylvania_occupations <- html_nodes(Pennsylvania, "table.occupations_table")

#Parse an html table into a data frame. 
html_table(Pennsylvania_occupations)
Pennsylvania_Occupations_1 <- html_table(Pennsylvania_occupations[[1]])


#Add the State Name as a Column
Pennsylvania_Occupations_1$State <- "Pennsylvania"
Pennsylvania_Occupations_1 <- Pennsylvania_Occupations_1[,c(3, 1:2)]


#Create variable with html of Rhode_Island
Rhode_Island <- read_html("http://livingwage.mit.edu/states/44")

# Grab all the tables from the webpage
Rhode_Island_tbls <- html_nodes(Rhode_Island, "table")

#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Rhode_Island_wages <- html_nodes(Rhode_Island, "table.wages_table")

#Parse an html table into a data frame. 
html_table(Rhode_Island_wages)
Rhode_Island_Wages_1 <- html_table(Rhode_Island_wages[[1]])


#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Rhode_Island_expenses <- html_nodes(Rhode_Island, "table.expenses_table")
Rhode_Island_all_tables <- html_nodes(Rhode_Island, "table")

#Parse an html table into a data frame. 
html_table(Rhode_Island_expenses)
Rhode_Island_Expenses_1 <- html_table(Rhode_Island_expenses[[1]])



#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Rhode_Island_occupations <- html_nodes(Rhode_Island, "table.occupations_table")

#Parse an html table into a data frame. 
html_table(Rhode_Island_occupations)
Rhode_Island_Occupations_1 <- html_table(Rhode_Island_occupations[[1]])


#Add the State Name as a Column
Rhode_Island_Occupations_1$State <- "Rhode"
Rhode_Island_Occupations_1 <- Rhode_Island_Occupations_1[,c(3, 1:2)]


#Create variable with html of South_Carolina
South_Carolina <- read_html("http://livingwage.mit.edu/states/45")
# Grab all the tables from the webpage
South_Carolina_tbls <- html_nodes(South_Carolina, "table")

#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
South_Carolina_wages <- html_nodes(South_Carolina, "table.wages_table")

#Parse an html table into a data frame. 
html_table(South_Carolina_wages)
South_Carolina_Wages_1 <- html_table(South_Carolina_wages[[1]])


#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
South_Carolina_expenses <- html_nodes(South_Carolina, "table.expenses_table")
South_Carolina_all_tables <- html_nodes(South_Carolina, "table")

#Parse an html table into a data frame. 
html_table(South_Carolina_expenses)
South_Carolina_Expenses_1 <- html_table(South_Carolina_expenses[[1]])


#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
South_Carolina_occupations <- html_nodes(South_Carolina, "table.occupations_table")

#Parse an html table into a data frame. 
html_table(South_Carolina_occupations)
South_Carolina_Occupations_1 <- html_table(South_Carolina_occupations[[1]])

#Add the State Name as a Column
South_Carolina_Occupations_1$State <- "South_Carolina"
South_Carolina_Occupations_1 <- South_Carolina_Occupations_1[,c(3, 1:2)]


#Create variable with html of South_Dakota
South_Dakota <- read_html("http://livingwage.mit.edu/states/46")
# Grab all the tables from the webpage
South_Dakota_tbls <- html_nodes(South_Dakota, "table")

#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
South_Dakota_wages <- html_nodes(South_Dakota, "table.wages_table")

#Parse an html table into a data frame. 
html_table(South_Dakota_wages)
South_Dakota_Wages_1 <- html_table(South_Dakota_wages[[1]])


#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
South_Dakota_expenses <- html_nodes(South_Dakota, "table.expenses_table")
South_Dakota_all_tables <- html_nodes(South_Dakota, "table")

#Parse an html table into a data frame. 
html_table(South_Dakota_expenses)
South_Dakota_Expenses_1 <- html_table(South_Dakota_expenses[[1]])


#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
South_Dakota_occupations <- html_nodes(South_Dakota, "table.occupations_table")

#Parse an html table into a data frame. 
html_table(South_Dakota_occupations)
South_Dakota_Occupations_1 <- html_table(South_Dakota_occupations[[1]])

#Add the State Name as a Column
South_Dakota_Occupations_1$State <- "South_Dakota"
South_Dakota_Occupations_1 <- South_Dakota_Occupations_1[,c(3, 1:2)]



#Create variable with html of Tennessee
Tennessee <- read_html("http://livingwage.mit.edu/states/47")
# Grab all the tables from the webpage
Tennessee_tbls <- html_nodes(Tennessee, "table")

#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Tennessee_wages <- html_nodes(Tennessee, "table.wages_table")

#Parse an html table into a data frame. 
html_table(Tennessee_wages)
Tennessee_Wages_1 <- html_table(Tennessee_wages[[1]])


#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Tennessee_expenses <- html_nodes(Tennessee, "table.expenses_table")
Tennessee_all_tables <- html_nodes(Tennessee, "table")

#Parse an html table into a data frame. 
html_table(Tennessee_expenses)
Tennessee_Expenses_1 <- html_table(Tennessee_expenses[[1]])



#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Tennessee_occupations <- html_nodes(Tennessee, "table.occupations_table")

#Parse an html table into a data frame. 
html_table(Tennessee_occupations)
Tennessee_Occupations_1 <- html_table(Tennessee_occupations[[1]])

#Add the State Name as a Column
Tennessee_Occupations_1$State <- "Tennessee"
Tennessee_Occupations_1 <- Tennessee_Occupations_1[,c(3, 1:2)]



#Create variable with html of Texas
Texas <- read_html("http://livingwage.mit.edu/states/48")
# Grab all the tables from the webpage
Texas_tbls <- html_nodes(Texas, "table")

#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Texas_wages <- html_nodes(Texas, "table.wages_table")

#Parse an html table into a data frame. 
html_table(Texas_wages)
Texas_Wages_1 <- html_table(Texas_wages[[1]])


#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Texas_expenses <- html_nodes(Texas, "table.expenses_table")
Texas_all_tables <- html_nodes(Texas, "table")

#Parse an html table into a data frame. 
html_table(Texas_expenses)
Texas_Expenses_1 <- html_table(Texas_expenses[[1]])



#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Texas_occupations <- html_nodes(Texas, "table.occupations_table")

#Parse an html table into a data frame. 
html_table(Texas_occupations)
Texas_Occupations_1 <- html_table(Texas_occupations[[1]])

#Add the State Name as a Column
Texas_Occupations_1$State <- "Texas"
Texas_Occupations_1 <- Texas_Occupations_1[,c(3, 1:2)]



#Create variable with html of Utah
Utah <- read_html("http://livingwage.mit.edu/states/49")
# Grab all the tables from the webpage
Utah_tbls <- html_nodes(Utah, "table")

#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Utah_wages <- html_nodes(Utah, "table.wages_table")

#Parse an html table into a data frame. 
html_table(Utah_wages)
Utah_Wages_1 <- html_table(Utah_wages[[1]])


#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Utah_expenses <- html_nodes(Utah, "table.expenses_table")
Utah_all_tables <- html_nodes(Utah, "table")

#Parse an html table into a data frame. 
html_table(Utah_expenses)
Utah_Expenses_1 <- html_table(Utah_expenses[[1]])



#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Utah_occupations <- html_nodes(Utah, "table.occupations_table")

#Parse an html table into a data frame. 
html_table(Utah_occupations)
Utah_Occupations_1 <- html_table(Utah_occupations[[1]])

#Add the State Name as a Column
Utah_Occupations_1$State <- "Utah"
Utah_Occupations_1 <- Utah_Occupations_1[,c(3, 1:2)]



#Create variable with html of Vermont
Vermont <- read_html("http://livingwage.mit.edu/states/50")
# Grab all the tables from the webpage
Vermont_tbls <- html_nodes(Vermont, "table")

#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Vermont_wages <- html_nodes(Vermont, "table.wages_table")

#Parse an html table into a data frame. 
html_table(Vermont_wages)
Vermont_Wages_1 <- html_table(Vermont_wages[[1]])


#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Vermont_expenses <- html_nodes(Vermont, "table.expenses_table")
Vermont_all_tables <- html_nodes(Vermont, "table")

#Parse an html table into a data frame. 
html_table(Vermont_expenses)
Vermont_Expenses_1 <- html_table(Vermont_expenses[[1]])



#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Vermont_occupations <- html_nodes(Vermont, "table.occupations_table")

#Parse an html table into a data frame. 
html_table(Vermont_occupations)
Vermont_Occupations_1 <- html_table(Vermont_occupations[[1]])

#Add the State Name as a Column
Vermont_Occupations_1$State <- "Vermont"
Vermont_Occupations_1 <- Vermont_Occupations_1[,c(3, 1:2)]



#Create variable with html of Virginia
Virginia <- read_html("http://livingwage.mit.edu/states/51")
# Grab all the tables from the webpage
Virginia_tbls <- html_nodes(Virginia, "table")

#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Virginia_wages <- html_nodes(Virginia, "table.wages_table")

#Parse an html table into a data frame. 
html_table(Virginia_wages)
Virginia_Wages_1 <- html_table(Virginia_wages[[1]])


#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Virginia_expenses <- html_nodes(Virginia, "table.expenses_table")
Virginia_all_tables <- html_nodes(Virginia, "table")

#Parse an html table into a data frame. 
html_table(Virginia_expenses)
Virginia_Expenses_1 <- html_table(Virginia_expenses[[1]])


#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Virginia_occupations <- html_nodes(Virginia, "table.occupations_table")

#Parse an html table into a data frame. 
html_table(Virginia_occupations)
Virginia_Occupations_1 <- html_table(Virginia_occupations[[1]])

#Add the State Name as a Column
Virginia_Occupations_1$State <- "Virginia"
Virginia_Occupations_1 <- Virginia_Occupations_1[,c(3, 1:2)]


#Create variable with html of Washington
Washington <- read_html("http://livingwage.mit.edu/states/53")
# Grab all the tables from the webpage
Washington_tbls <- html_nodes(Washington, "table")

#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Washington_wages <- html_nodes(Washington, "table.wages_table")

#Parse an html table into a data frame. 
html_table(Washington_wages)
Washington_Wages_1 <- html_table(Washington_wages[[1]])


#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Washington_expenses <- html_nodes(Washington, "table.expenses_table")
Washington_all_tables <- html_nodes(Washington, "table")

#Parse an html table into a data frame. 
html_table(Washington_expenses)
Washington_Expenses_1 <- html_table(Washington_expenses[[1]])



#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Washington_occupations <- html_nodes(Washington, "table.occupations_table")

#Parse an html table into a data frame. 
html_table(Washington_occupations)
Washington_Occupations_1 <- html_table(Washington_occupations[[1]])

#Add the State Name as a Column
Washington_Occupations_1$State <- "Washington"
Washington_Occupations_1 <- Washington_Occupations_1[,c(3, 1:2)]



#Create variable with html of West_Virginia
West_Virginia <- read_html("http://livingwage.mit.edu/states/54")
# Grab all the tables from the webpage
West_Virginia_tbls <- html_nodes(West_Virginia, "table")

#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
West_Virginia_wages <- html_nodes(West_Virginia, "table.wages_table")

#Parse an html table into a data frame. 
html_table(West_Virginia_wages)
West_Virginia_Wages_1 <- html_table(West_Virginia_wages[[1]])


#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
West_Virginia_expenses <- html_nodes(West_Virginia, "table.expenses_table")
West_Virginia_all_tables <- html_nodes(West_Virginia, "table")

#Parse an html table into a data frame. 
html_table(West_Virginia_expenses)
West_Virginia_Expenses_1 <- html_table(West_Virginia_expenses[[1]])


#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
West_Virginia_occupations <- html_nodes(West_Virginia, "table.occupations_table")

#Parse an html table into a data frame. 
html_table(West_Virginia_occupations)
West_Virginia_Occupations_1 <- html_table(West_Virginia_occupations[[1]])

#Add the State Name as a Column
West_Virginia_Occupations_1$State <- "West_Virginia"
West_Virginia_Occupations_1 <- West_Virginia_Occupations_1[,c(3, 1:2)]


#Create variable with html of Wisconsin
Wisconsin <- read_html("http://livingwage.mit.edu/states/55")
# Grab all the tables from the webpage
Wisconsin_tbls <- html_nodes(Wisconsin, "table")

#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Wisconsin_wages <- html_nodes(Wisconsin, "table.wages_table")

#Parse an html table into a data frame. 
html_table(Wisconsin_wages)
Wisconsin_Wages_1 <- html_table(Wisconsin_wages[[1]])


#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Wisconsin_expenses <- html_nodes(Wisconsin, "table.expenses_table")
Wisconsin_all_tables <- html_nodes(Wisconsin, "table")

#Parse an html table into a data frame. 
html_table(Wisconsin_expenses)
Wisconsin_Expenses_1 <- html_table(Wisconsin_expenses[[1]])


#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Wisconsin_occupations <- html_nodes(Wisconsin, "table.occupations_table")

#Parse an html table into a data frame. 
html_table(Wisconsin_occupations)
Wisconsin_Occupations_1 <- html_table(Wisconsin_occupations[[1]])

#Add the State Name as a Column
Wisconsin_Occupations_1$State <- "Wisconsin"
Wisconsin_Occupations_1 <- Wisconsin_Occupations_1[,c(3, 1:2)]


#Create variable with html of Wyoming
Wyoming <- read_html("http://livingwage.mit.edu/states/56")
# Grab all the tables from the webpage
Wyoming_tbls <- html_nodes(Wyoming, "table")

#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Wyoming_wages <- html_nodes(Wyoming, "table.wages_table")

#Parse an html table into a data frame. 
html_table(Wyoming_wages)
Wyoming_Wages_1 <- html_table(Wyoming_wages[[1]])


#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Wyoming_expenses <- html_nodes(Wyoming, "table.expenses_table")
Wyoming_all_tables <- html_nodes(Wyoming, "table")

#Parse an html table into a data frame. 
html_table(Wyoming_expenses)
Wyoming_Expenses_1 <- html_table(Wyoming_expenses[[1]])


#When given a list of nodes, html_node will always return a list of the same length, the length of html_nodes might be longer or shorter.
Wyoming_occupations <- html_nodes(Wyoming, "table.occupations_table")

#Parse an html table into a data frame. 
html_table(Wyoming_occupations)
Wyoming_Occupations_1 <- html_table(Wyoming_occupations[[1]])

#Add the State Name as a Column
Wyoming_Occupations_1$State <- "Wyoming"
Wyoming_Occupations_1 <- Wyoming_Occupations_1[,c(3, 1:2)]


parse_number(Wyoming_Occupations_1$`Typical Annual Salary`)
Wyoming_Total_Occupations <- parse_number(Wyoming_Occupations_1$`Typical Annual Salary`)
Wyoming_Occupations_1$Typical_Annual_Salary <- Wyoming_Total_Occupations



#Combining all 50 States together (Occupation Tables)
Combining_States_Occupation <- rbind(Alabama_Occupations_1, Alaska_Occupations_1, Arizona_Occupations_1, Arkansas_Occupations_1,
    California_Occupations_1, Colorado_Occupations_1, Connecticut_Occupations_1, Delaware_Occupations_1, District_of_Columbia_Occupations_1,
    Florida_Occupations_1, Georgia_Occupations_1, Hawaii_Occupations_1, Idaho_Occupations_1, Illinois_Occupations_1, Indiana_Occupations_1,
    Iowa_Occupations_1, Kansas_Occupations_1, Kentucky_Occupations_1, Louisiana_Occupations_1, Maine_Occupations_1, Maryland_Occupations_1,
    Massachusetts_Occupations_1, Michigan_Occupations_1, Minnesota_Occupations_1, Mississippi_Occupations_1, Missouri_Occupations_1,
    Montana_Occupations_1, Nebraska_Occupations_1, Nevada_Occupations_1, New_Hampshire_Occupations_1, New_Jersey_Occupations_1,
    New_Mexico_Occupations_1, New_York_Occupations_1, North_Carolina_Occupations_1, North_Dakota_Occupations_1, Ohio_Occupations_1,
    Oklahoma_Occupations_1, Oregon_Occupations_1, Pennsylvania_Occupations_1, Rhode_Island_Occupations_1, South_Carolina_Occupations_1, 
    South_Dakota_Occupations_1, Tennessee_Occupations_1, Texas_Occupations_1, Utah_Occupations_1, Vermont_Occupations_1, Virginia_Occupations_1,
    Washington_Occupations_1, West_Virginia_Occupations_1, Wisconsin_Occupations_1, Wyoming_Occupations_1)
 

#Turning Combining_States_Occupation into Numeric from Character
#Combining_States_Occupation$`Typical Annual Salary` <- as.numeric(as.character(Combining_States_Occupation$`Typical Annual Salary`, na.rm=TRUE))

#Calculate the Mean of the Typical Annual Salary Column with dropping the NA values from the Calculation
#By using the na.rem = TRUE which means remove the NA Values
#mean(Combining_States_Occupation$`Typical Annual Salary`,na.rm = TRUE)

#summary(Combining_States_Occupation$`Typical Annual Salary`,na.rm=TRUE)

#If you want to convert the character to a numeric as well, then first convert it to a factor (using as.factor) and 
#save/ overwrite existing variable. Next convert this factor variable to numeric (using as.numeric). You wouldn't be 
#creating NAs this way and will be able to convert the data-set you have into numeric.


parse_number(Combining_States_Occupation$`Typical Annual Salary`)

States_Total_Occupations <- parse_number(Combining_States_Occupation$`Typical Annual Salary`)

Combining_States_Occupation$Typical_Annual_Salary <- States_Total_Occupations

#Combining_States_Occupation$`Typical Annual Salary` <- as.factor(as.character(Combining_States_Occupation$`Typical Annual Salary`))
#Newer_Combined <- Combining_States_Occupation
#Newer_Combined$`Typical Annual Salary` <- as.numeric(as.factor(Newer_Combined$`Typical Annual Salary`))




#performing the boxplot to get an idea of what the entire dataset looks like 
ggboxplot(California_Occupations_1, x = "Occupation", y = "Salary",
          color = "Occupation", palette = c("#00AFBB", "#E7B800", "#FC4E07", "#00AF00", "#E7B855", "#FC4E44", "#00AF47","#00AFBB", "#E7B800", "#FC4E07", "#00AF00", "#E7B855", "#FC4E07", "#00AF00", "#E7B855", "#FC4E44", "#00AF47", "#00AFBB", "#E7B800", "#FC4E07", "#00AF00", "#E7B855"),
          order = c("Management", "Business & Financial Operations", "Computer & Mathematical", "Architecuture & Engineering", "Life, Phyiscal & Social Science", "Community & Social Service", "Legal", "Education, Training, & Library", "Arts, Design, Entertainment", "Sports, & Media", "Healthcare Practioners & Technical", "Healthcare Support", "Protective Service", "Food Preparation & Service Related", "Building & Grounds Cleaning & Maintenance", "Personal Care & Service", "Sales & Related", "Office & Administration Support", " Farming, Fishing, & Forestry", "Construction & Extraction", "Installation, Maintenance, & Repair", "Production", "Transportation & Material Moving"),
          ylab = "Salary", xlab = "Occupation")

