source('read data.R')

par(mfrow=c(2,2))

plot(as.numeric(processed_data$Global_active_power),main ="Global Active Power",type="l", ylab="Global Active Power(kilowatts)",xlab="",axes=FALSE)
axis(1, at = c(0,1500,2900),labels = c("Thu","Fri","Sat"))
axis(2,at=c(0,2,4,6))
box(lty = 1, col = 'black')

plot(as.numeric(processed_data$Voltage),main="voltage",type="l", ylab="voltage",xlab="",axes=FALSE)
axis(1, at = c(0,1500,2900),labels = c("Thu","Fri","Sat"))
axis(2,at=c(234,238,240,242),labels=c("234","238","240","242"))
box(lty = 1, col = 'black')

plot(1:nrow(processed_data),as.numeric(processed_data$Sub_metering_1),main="Energy metering", ylab="Energy sub metering",xlab="",type="l",col="black",axes=FALSE)
par(new=T)
plot(as.numeric(processed_data$Sub_metering_2),col="red",type="l",axes=FALSE,ylim=c(0,40),xlab="",ylab="")
par(new=T)
plot(as.numeric(processed_data$Sub_metering_3),col="blue",type="l",axes=FALSE,ylim=c(0,40),xlab="",ylab="")
axis(1, at = c(0,1500,2900),labels = c("Thu","Fri","Sat"))
axis(2, at = c(0,10,20,30),labels = c("0","10","20","30"))
legend("topright",legend=c("sub-metering1","sub-metering2","sub-metering3"),col=c("black","red","blue"),lty=c(1,1,1),lwd=2,cex = 0.75,bty = "n")
box(lty = 1, col = 'black')

plot(as.numeric(processed_data$Global_reactive_power),main ="Global Reactive Power",type="l", ylab="",xlab="",axes=FALSE)
axis(1, at = c(0,1500,2900),labels = c("Thu","Fri","Sat"))
axis(2,at=c(0.1,0.2,0.3,0.4),c("0.1","0.2","0.3","0.4"))
box(lty = 1, col = 'black')
dev.copy(png,"plot4.png")
dev.off()

