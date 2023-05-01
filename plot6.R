#source("main.R")

#PLOT 6: Compare emissions from motor vehicle sources in Baltimore City with emissions from motor vehicle sources in 
# Los Angeles County, California (fips == "06037"). Which city has seen greater changes over time in motor vehicle emissions?
eCountBalt <- aggregate(Emissions ~ year,baltimoreSub, sum)
laSub <- subset(NEI, fips == "06037")
eCountLa <- aggregate(Emissions ~ year, laSub, sum)

#Calculate Percent Change between min and max year
baltTotal <- sum(eCountBalt$Emissions)
baltMax <- eCountBalt[eCountBalt$year == "2008",]
maxPercentChgBalt <- baltMax$Emissions/baltTotal

laTotal <- sum(eCountLa$Emissions)
laMax <- eCountLa[eCountLa$year == "2008",]
maxPercentChgLa <- laMax$Emissions/laTotal


png(file = "plot6.png")

par(mfrow = c(1,2))
with(eCountBalt, plot(year,Emissions, xlab = "Year", main = "Baltimore City, Maryland", type="l"))
with(eCountLa, plot(year,Emissions, xlab = "Year", main = "Los Angeles, California", type="l"))

dev.off()
