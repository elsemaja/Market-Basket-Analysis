# DECRIPTION: Market BAsket Analysis of Electronidex Transactions
# NAME: Else Frijling
# SCRIPT FUNCTION: Explore and visualize the rules
# VERSION: 1

# Explore and visualize the rules by plots, graphs and tables all at once:
arulesViz::ruleExplorer(Rules)

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


# Create matrix of subrules with confidence of 0.6 or higher
subrules.7 <- Rules[quality(Rules)$confidence > 0.7]
subrules.7

# by using a graph
plot(subrules.7, 
     method = "graph",
     control=list(type="items"))

interactivematrix <- plot(subrules.7, 
                          method = "matrix", 
                          measure = "lift", 
                          interactive = TRUE)

#test
subrulestopN10lift <- head(sort(Rules, by="lift"), 10)
plot(subrulestopN10lift, method="graph",control=list(type="items",main=""))

