# DECRIPTION: Market Basket Analysis of Electronidex Transactions
# NAME: Else Frijling
# SCRIPT FUNCTION: Explore and visualize the rules with ruleExplorer or manual functions
# VERSION: 2


#explore rules with ruleExplorer
arulesViz::ruleExplorer(Rules)
arulesViz::ruleExplorer(RulesCat)


# manually inspect rules using summary(), inspect() and inspectDT()
inspect(head(sort(Rules, by ="lift"),10))
summary(Rules)

# inspect and improve, sort by metrics, support, confidence or lift.
inspect(sort(Rules, by = "lift"))

# check for redundancy
is.redundant(Rules)

# create a subset of all the rules of a certain item
ItemRulesViewsonic <- subset(Rules, items %in% "ViewSonic Monitor")
ItemRulesViewsonic
inspect(sort(ItemRulesViewsonic, 
             by ="lift"))

# by using a plot
plot(Rules,
     jitter = 0)

# by using a graph
plot(Rules, 
     method = "graph",
     control=list(type="items"))

plot(Rules, 
     method = "two-key plot",
     jitter = 0)

sel <- plot(Rules, 
            measure=c("support", "lift"), 
            shading = "confidence",
            interactive = TRUE)


# Create matrix of subrules with confidence of 0.7 or higher
subrulesConf.7 <- Rules[quality(Rules)$confidence > 0.7]
subrulesConf.7

# by using a graph
plot(subrulesConf.7, 
     method = "graph",
     control=list(type="items"))

interactivematrix <- plot(subrulesConf.7, 
                          method = "matrix", 
                          measure = "lift", 
                          interactive = TRUE)

