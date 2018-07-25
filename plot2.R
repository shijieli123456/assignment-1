df <- read.table("h.txt",sep = ";",skip = 66637, nrow = 2880, na.strings = "?")
png(filename = "plot2.png",width = 480,height = 480)
y<-strptime(paste(df$V1,df$V2),"%d/%m/%Y %H:%M:%S")
plot(y, df$V3, type="l", xlab="", ylab = "Global Active Power (kilowatts)")