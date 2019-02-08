# DECRIPTION: Market BAsket Analysis of Electronidex Transactions
# NAME: Else Frijling
# SCRIPT FUNCTION: Libraries 
# VERSION: 1


# install packages for Market Basket Analysis and visualization
library("arules")
library("arulesViz")
library("gplots")
library("prabclus")
library("DEoptimR")
library("trimcluster")
library("graphics")
library("RColorBrewer")
require("RColorBrewer")

# upload data using read.transactions(), because we have no variables
# transaction or basket data is binary 0 = no purchase 1 = purchase

Transactions <- read.transactions("ElectronidexTransactions2017.csv",
                                  format = "basket",
                                  sep = ",",
                                  skip = 0,
                                  rm.duplicates = TRUE)



