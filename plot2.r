
datafile <- 'dataset.txt'
data <- read.table(datafile, header = TRUE, sep = ';', stringsAsFactors = FALSE, dec = '.')

subset_data <- data[data$Date %in% c("1/2/2007","2/2/2007"),]
subset_data[c(1,2, nrow(subset_data)-1, nrow(subset_data)),]

datetime <- strptime(paste(subset_data$Date, subset_data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
head(datetime)

globalActivePower <- as.numeric(subset_data$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()


