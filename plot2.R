#source("main.R")

#PLOT 2: Have total emissions from PM2.5 decreased in the Baltimore City, Maryland (fips == "24510") from 1999 to 2008? 
#Use the base plotting system to make a plot answering this question.
baltimoreSub <- subset(NEI, fips == "24510")
eCount2 <- aggregate(Emissions ~ year,baltimoreSub, sum)



png(file = "plot2.png")
with(eCount2, plot(year,log10(Emissions), xlab = "Year", main = "Baltimore City, Maryland Emissions", type="l"))
dev.off()
#Answer = yes
