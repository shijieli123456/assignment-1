df <- read.table("h.txt",sep = ";",skip = 66637, nrow = 2880, na.strings = "?")
png(filename = "plot1.png",width = 480,height = 480)
hist(df$V3,12,col="red",main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
