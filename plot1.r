
datafile <- 'dataset.txt'
data <- read.table(datafile, header = TRUE, sep = ';', stringsAsFactors = FALSE, dec = '.')



subset_data <- data[data$Date %in% c("1/2/2007","2/2/2007"),]
subset_data[c(1,2, nrow(subset_data)-1, nrow(subset_data)),]

globalActivePower <- as.numeric(subset_data$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
