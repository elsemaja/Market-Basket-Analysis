# DECRIPTION: Market BAsket Analysis of Electronidex Transactions
# NAME: Else Frijling
# SCRIPT FUNCTION: Use the apriori function to create rules
# VERSION: 2


# This is the apriori() function with "out of the box" default settings:              
# RulesName <- apriori (DatasetName, parameter = list(supp = 0.1, conf = 0.8))
# use it on both datasets and tweak the parameters
Rules <- apriori (Transactions, 
                  parameter = list(supp = 0.008, conf = 0.5))
inspect(Rules)

RulesCat <- apriori (TransactionsCat, 
                  parameter = list(supp = 0.03, conf = 0.8))
inspect(TransactionsCat)




