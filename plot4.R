#source("main.R")


#PLOT 4: Across the United States, how have emissions from coal combustion-related sources changed from 1999–2008?

#Create a subset that checks for comb and fuel
combSCC <- grepl("comb", SCC$EI.Sector, ignore.case = TRUE)
coalSCC <- grepl("coal", SCC$EI.Sector, ignore.case = TRUE)
combinedSCC <- combSCC & coalSCC

coalCombSCC <- SCC[combinedSCC,]$SCC
coalCombNEI <- NEI[NEI$SCC %in% coalCombSCC,]

eCount3 <- aggregate(Emissions ~ year,coalCombNEI, sum)


png(file = "plot4.png")
with(eCount3, plot(year, log10(Emissions), type="l", xlab = "Year" ,main = "Coal Combustion Related Emissions 1999-2008"))
dev.off()
