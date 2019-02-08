# DECRIPTION: Market BAsket Analysis of Electronidex Transactions
# NAME: Else Frijling
# SCRIPT FUNCTION: Visualize the dataset 
# VERSION: 1

# explore the data
inspect (Transactions [1:10]) # You can view the transactions. Is there a way to see a certain # of transactions?
length (Transactions) # Number of transactions.
size (Transactions) # Number of items per transaction
LIST(Transactions) # Lists the transactions by conversion (LIST must be capitalized)
itemLabels(Transactions) # To see the item labels
summary(Transactions) # summarized rows, colums, density, most frequent sold items

# visualize the dataset
itemFrequencyPlot(Transactions, 
                  type = "absolute", 
                  col = brewer.pal(10,'Pastel2'),
                  main = "Absolute Frequency Top 10",
                  topN = 10)

itemFrequencyPlot(Transactions, 
                  type = "absolute", 
                  col = "orange",
                  main = "Absolute Frequency Top 30",
                  topN = 30)

# use the image function, specify the amount of transactions you want to visualize
image(Transactions [1:150],
      xlab = "Items (Columns)", 
      ylab = "Transactions (Rows)")

# use the following function to randomly select a number of transactions
image(sample(Transactions, 150,
             xlab = "Items", 
             ylab = "Transactions"))