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
library("colorspace")

# upload data using read.transactions(), because we have no variables
# transaction or basket data is binary 0 = no purchase 1 = purchase

Transactions <- read.transactions("ElectronidexTransactions2017 categories.csv",
                                  format = "basket",
                                  sep = ";",
                                  skip = 0,
                                  rm.duplicates = TRUE)

# explore the data
inspect (Transactions [1:10]) # View the first 10 transactions
length (Transactions) # Number of transactions.
LIST(Transactions) # Lists the transactions by conversion (LIST must be capitalized)
itemLabels(Transactions) # To see the item labels
summary(Transactions) # summarized rows, colums, density, most frequent sold items

itemFrequencyPlot(Transactions)
# visualize the dataset
itemFrequencyPlot(Transactions, 
                  type = "relative", 
                  col = rainbow_hcl(17),
                  main = "Relative Frequency Per Category",
                  topN = 17)
