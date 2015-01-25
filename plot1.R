# Plot1 

# Load Data
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

# Have total emissions from PM2.5 decreased in the United States from 1999 to 2008?
# Using the base plotting system, make a plot showing the total PM2.5 emission from all sources
# for each of the years 1999, 2002, 2005, and 2008.

data <- aggregate(NEI$Emissions, list(year = NEI$year), sum)
colnames(data)[2] <- "Total_PM2.5_Emissions"

png(file = "plot1.png", bg = "transparent")
plot(data, 
     type = "o", 
     ylab = "Total Emissions PM2.5",
     xlab = "Year",
     main = "Total Emissions in the United States 1999-2008")
dev.off()

