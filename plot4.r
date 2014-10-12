#1st assignment for the cousera class explanatory data analysis
dat <- read.csv('household_power_consumption_small.csv',sep=',',header=TRUE)
y <- as.Date(dat$Date,format="%d/%m/%Y")
w <- paste(y,dat$Time)

dat$Date <- as.Date(dat$Date,format="%d/%m/%Y")
dat$Time <- strptime(w,format="%Y-%m-%d %H:%M:%S")
df <-  subset(dat,dat$Date>as.Date("2007-01-31"))
df <-  subset(df,df$Date<as.Date("2007-02-3"))
#df with selected dates
#4
par(mfrow=c(2,2),mfcol = c(2,2), mar=c(4,4,3,2))
plot(df$Time,df$Global_active_power,type='l',xlab='',ylab="Global Acitive Power")
plot(df$Time,df$Sub_metering_1,type='l',xlab='',ylab="Energy Sub Metering")
lines(df$Time,df$Sub_metering_2,col='red')
lines(df$Time,df$Sub_metering_3,col='blue')
legend("topright", c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=c(1),cex=0.5)
plot(df$Time,df$Voltage,type='l',xlab='datetime',ylab="Voltage")
plot(df$Time,df$Global_reactive_power,type='l',xlab='datetime',ylab="Global_reacitive_power")