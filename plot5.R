#source("main.R")

#PLOT 5: How have emissions from motor vehicle sources changed from 1999–2008 in Baltimore City?
baltMvEmissions <- subset(NEI, NEI$fips == "24510" & NEI$type == "ON-ROAD")
eCount4 <- aggregate(Emissions ~ year,baltMvEmissions, sum)

#Answer - Emissions decreased

png(file = "plot5.png")
with(eCount4, plot(year, log10(Emissions), type="l", xlab = "Year" ,main = "Baltimore City Motor Vehicle Emissions", sub = "1999-2008"))
dev.off()
