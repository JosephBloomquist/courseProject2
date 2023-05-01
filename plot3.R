#source("main.R")

#PLOT 3: Of the four types of sources indicated by the type (point, nonpoint, onroad, nonroad) variable, 
# which of these four sources have seen decreases in emissions from 1999–2008 for Baltimore City? 
#Which have seen increases in emissions from 1999–2008? Use the ggplot2 plotting system to make a plot answer this question.

png(file = "plot3.png")

library(ggplot2)
ggplot(baltimoreSub, aes(year, log10(Emissions)))+geom_point() +facet_grid(type~.) + geom_smooth(method="lm") + labs(title = "Baltimore City Emissions 1999-2008 by Source")
#According to linear regression line, all types have decreased over time. None have increased on average.
dev.off()
