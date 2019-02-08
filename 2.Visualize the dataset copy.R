# DECRIPTION: Market BAsket Analysis of Electronidex Transactions
# NAME: Else Frijling
# SCRIPT FUNCTION: Visualize the dataset 
# VERSION: 1

# visualize the dataset
itemFrequencyPlot(Transactions, 
                  type = "absolute", 
                  col = "orange",
                  main = "Absolute Frequency per category",
                  topN = 17)

itemFrequencyPlot(Transactions, 
                  type = "absolute", 
                  col = "orange",
                  main = "Absolute Frequency Top 30",
                  topN = 30)

# use the image function, specify the amount of transactions you want to visualize
image(Transactions [1:20],
      xlab = "Items (Columns)", 
      ylab = "Transactions (Rows)")

# use the following function to randomly select a number of transactions
image(sample(Transactions, 150,
             xlab = "Items", 
             ylab = "Transactions"))
