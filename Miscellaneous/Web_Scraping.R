#Web crawling and scraping

library("rvest")

library("magrittr")



# Create variable with html of webpage
webpage <- read_html("http://livingwage.mit.edu/counties/15003")

# Grab all the tables from the webpage
tbls <- html_nodes(webpage, "table")

head(tbls)

wages <- html_nodes(webpage, "table.wages_table")
html_table(wages)
Wages_1 <- html_table(wages[[1]])


expenses <- html_nodes(webpage, "table.expenses_table")
all_tables <- html_nodes(webpage, "table")


expenses <- html_nodes(webpage, "table.expenses_table")

html_table(expenses)
Expenses_1 <- html_table(expenses[[1]])



occupations <- html_nodes(webpage, "table.occupations_table")
html_table(occupations)
Occupations_1 <- html_table(occupations[[1]])


# Create variable with html of webpage
webpage <- read_html("http://livingwage.mit.edu/counties/06097")

# Grab all the tables from the webpage
Sonoma_tbls <- html_nodes(webpage, "table")


Sonoma_wages <- html_nodes(webpage, "table.wages_table")
html_table(Sonoma_wages)
Sonoma_Wages_1 <- html_table(Sonoma_wages[[1]])


Sonoma_expenses <- html_nodes(webpage, "table.expenses_table")
Sonoma_all_tables <- html_nodes(webpage, "table")


Sonoma_expenses <- html_nodes(webpage, "table.expenses_table")

html_table(Sonoma_expenses)
Sonoma_Expenses_1 <- html_table(Sonoma_expenses[[1]])



Sonoma_occupations <- html_nodes(webpage, "table.occupations_table")
html_table(Sonoma_occupations)
Sonoma_Occupations_1 <- html_table(Sonoma_occupations[[1]])


