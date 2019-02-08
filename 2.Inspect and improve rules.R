# inspect and improve, sort by metrics, support, confidence or lift.
inspect(sort(RulesName4, by = "lift"))

#create a subset of all the rules of a certain item
ItemRules4 <- subset(RulesName4, items %in% "Acer Aspire")
ItemRules4
inspect(ItemRules4)

# check for redundancy
is.redundant(RulesName4)
is.redundant(RulesName3)
is.redundant(RulesName2)
is.redundant(RulesName1)


# remove redundant rules

