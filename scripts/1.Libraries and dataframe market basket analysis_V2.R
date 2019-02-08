# DECRIPTION: Market Basket Analysis of Electronidex Transactions
# NAME: Else Frijling
# SCRIPT FUNCTION: Libraries and creating dataframes
# VERSION: 2


# install packages for Market Basket Analysis and visualization
library("arules")
library("arulesViz")
library("gplots")
library("prabclus")
library("DEoptimR")
library("trimcluster")
library("graphics")
library("RColorBrewer")


# upload data using read.transactions(),
# create two dataset Transactions based on product (=default) and
# Transactions based on category "TransactionsCat"

Transactions <- read.transactions("ElectronidexTransactions2017.csv",
                                  format = "basket",
                                  sep = ",",
                                  skip = 0,
                                  rm.duplicates = TRUE)


TransactionsCat <- read.transactions("ElectronidexTransactions2017 categories.csv",
                                  format = "basket",
                                  sep = ";",
                                  skip = 0,
                                  rm.duplicates = TRUE)
