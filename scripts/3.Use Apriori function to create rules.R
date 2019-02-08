# DECRIPTION: Market BAsket Analysis of Electronidex Transactions
# NAME: Else Frijling
# SCRIPT FUNCTION: Use the apriori function to create rules
# VERSION: 1


# the apriori() function using "out of the box" default settings:              
# RulesName<- apriori (DatasetName, parameter = list(supp = 0.1, conf = 0.8))

Rules <- apriori (Transactions, 
                  parameter = list(supp = 0.008, conf = 0.5))
inspect(Rules)

#explore rules
arulesViz::ruleExplorer(Rules)

# inspect rules using summary(), inspect() and inspectDT()
inspect(head(sort(Rules, by ="lift"),10))
summary(Rules)

# inspect and improve, sort by metrics, support, confidence or lift.
inspect(sort(Rules, by = "lift"))

# check for redundancy
is.redundant(Rules)


#create a subset of all the rules of a certain item
ItemRulesViewsonic <- subset(Rules, items %in% "ViewSonic Monitor")
ItemRulesViewsonic
inspect(sort(ItemRulesViewsonic, 
             by ="lift"))
arulesViz::ruleExplorer(ItemRulesViewsonic)

