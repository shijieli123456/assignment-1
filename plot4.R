df <- read.table("h.txt",sep = ";",skip = 66637, nrow = 2880, na.strings = "?")
png(filename = "plot4.png",width = 480,height = 480)
y<-strptime(paste(df$V1,df$V2),"%d/%m/%Y %H:%M:%S")

par(mfrow=c(2,2),mar=c(4,4,4,4))

plot(y,df$V3,type="l",xlab="",ylab = "Global Active Power")

plot(y,df$V6,type="l",xlab = "datetime",ylab = "Voltage")

plot(y,df$V7,type="l",xlab="",ylab="Energy sub metering", col="black")

lines(y,df$V8,col="red")

lines(y,df$V9,col="blue")

legend("topright",lty=1,lwd=2,col = c("black","red","blue"),legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), bty = "n")

plot(y, df$V4,type="l",xlab="datetime",ylab = "Global_reactive_power")

dev.off()