library(ggplot2)

ggplot(dat, aes(x = AIRLINE, y=ARRIVAL_TIME), fill = AIRLINE) + geom_col()

ggplot(data, aes(x = airline)) +
  geom_col(aes(y = ArrDelay, fill = "ArrDelay")) +
  geom_col(aes(y = DepDelay, fill = "DepDelay"))