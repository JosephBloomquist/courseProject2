#source("main.R")


#PLOT 1: Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? Using the base plotting system, 
# make a plot showing the total PM2.5 emission from all sources for each of the years 1999, 2002, 2005, and 2008.

par(mfrow=c(1,1))
#Count emissions for each year and plot them
eCount <- aggregate(Emissions ~ year,NEI, sum)


png(file = "plot1.png")
with(eCount, plot(year,log10(Emissions), xlab = "Year", main = "US Emissions over time", type="l"))
dev.off()
#Answer = yes


