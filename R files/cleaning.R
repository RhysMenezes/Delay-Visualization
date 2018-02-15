data = data[data$ArrDelay >= 0,]
data = data[data$DepDelay >= 0,]

data<-data[(data$ArrDelay < 130),]
data<-data[(data$DepDelay < 130),]
data<-data[!(data$ArrDelay=="NA"),]

data$ArrDelay[data$ArrDelay<= 0] <- 0
data$DepDelay[data$DepDelay<= 0] <- 0

data<-data[!(data$UniqueCarrier=="NA"),]

flights = flights[flights$ARRIVAL_DELAY > 0,]
flights = flights[flights$DEPARTURE_DELAY > 0,]

flights<-flights[(flights$ARRIVAL_DELAY < 130),]
flights<-flights[(flights$DEPARTURE_DELAY < 130),]
flights<-flights[!(flights$AIRLINE=="NA"),]
flights<-na.omit(flights)
flights<-na.fail(flights)

summary(flights)
flights<-read_csv("flights.csv")
df<-data.frame(as.numeric(flights$ARRIVAL_DELAY))
dff<-na.omit(dff)

data<-na.omit(data)
data$ArrDelay<-data$ArrDelay/10
