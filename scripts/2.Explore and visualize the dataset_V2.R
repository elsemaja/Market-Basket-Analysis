# DECRIPTION: Market BAsket Analysis of Electronidex Transactions
# NAME: Else Frijling
# SCRIPT FUNCTION: Explore and visualize the datasets 
# VERSION: 2

# explore the data
inspect (Transactions [1:10]) # You can view the first 10 transactions
length (Transactions) # Number of transactions.
size (Transactions) # Number of items per transaction
LIST(Transactions) # Lists the transactions by conversion
itemLabels(Transactions) # To see the item labels
summary(Transactions) # summarized rows, colums, density, most frequent sold items

# visualize the dataset for products and categories
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

itemFrequencyPlot(TransactionsCat, 
                  type = "absolute", 
                  col = "turquoise",
                  main = "Absolute Frequency Per Category ",
                  topN = 17)

# use the image function, specify the amount of transactions you want to visualize
image(Transactions [1:150],
      xlab = "Items (Columns)", 
      ylab = "Transactions (Rows)")

# use the following function to randomly select a number of transactions
image(sample(Transactions, 150,
             xlab = "Items", 
             ylab = "Transactions"))