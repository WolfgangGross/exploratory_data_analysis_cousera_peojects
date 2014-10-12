#1st assignment for the cousera class explanatory data analysis
dat <- read.csv('household_power_consumption_small.csv',sep=',',header=TRUE)
y <- as.Date(dat$Date,format="%d/%m/%Y")
w <- paste(y,dat$Time)

dat$Date <- as.Date(dat$Date,format="%d/%m/%Y")
dat$Time <- strptime(w,format="%Y-%m-%d %H:%M:%S")
df <-  subset(dat,dat$Date>as.Date("2007-01-31"))
df <-  subset(df,df$Date<as.Date("2007-02-3"))
#df with selected dates
#2
plot(df$Time,df$Global_active_power,type='l',xlab='',ylab="Global Acitive Power")