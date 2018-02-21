
#Web crawling and scraping

library("rvest")

library("magrittr")



# Create variable with html of webpage
url<-read_html("http://livingwage.mit.edu/states/06/locations.html")