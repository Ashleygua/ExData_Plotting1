source('read data.R')
plot(1:nrow(processed_data),as.numeric(processed_data$Sub_metering_1),main="", ylab="Energy sub metering",xlab="",type="l",col="black",axes=FALSE)
par(new=T)
plot(as.numeric(processed_data$Sub_metering_2),col="red",type="l",axes=FALSE,ylim=c(0,40),xlab="",ylab="")
par(new=T)
plot(as.numeric(processed_data$Sub_metering_3),col="blue",type="l",axes=FALSE,ylim=c(0,40),xlab="",ylab="")
axis(1, at = c(0,1500,2900),labels = c("Thu","Fri","Sat"))
axis(2, at = c(0,10,20,30),labels = c("0","10","20","30"))
legend("topright",legend=c("sub-metering1","sub-metering2","sub-metering3"),col=c("black","red","blue"),lty=c(1,1,1),lwd=2)
box(lty = 1, col = 'black')
dev.copy(png,"plot3.png")
dev.off()
