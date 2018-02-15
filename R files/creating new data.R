write.csv(dff, file = "MyData1.csv",row.names=FALSE, na="",col.names=FALSE, sep=",")

data %>% group_by(airline) %>% 
summarise(ArrDelay = mean(ArrDelay), DepDelay = mean(DepDelay)) %>% mean/tally

data %>% group_by(airline) %>% tally %>% filter(!ArrDelay=="0") %>% 
arrange(desc(n))

hello<-data %>% group_by(Month) %>% filter(airline=="Comair") %>% tally(ArrDelay)
data %>% group_by(Month) %>% filter(airline=="Comair") %>% tally

data %>% group_by(Month_of_Year) %>% summarise(arrdelay=sum(ArrDelay))

data %>% group_by(airline) %>% tally(bigger) %>% filter(!ArrDelay=="0") %>% 
arrange(desc(n))

q1<-data %>% group_by(Month) %>% filter(airline=="Comair") %>% tally(ArrDelay)
q2<-data %>% group_by(Month) %>% filter(airline=="Comair") %>% tally
q3<-data.frame(q1,q2)
write.csv(p, file = "airportanswers12.csv",row.names=FALSE, na="",col.names=FALSE, sep=",")

data %>% group_by(DayOfWeek) %>% summarise(ArrDelay=mean(ArrDelay))
data %>% group_by(date) %>% summarise(ArrDelay = n())
data %>% group_by(DayOfWeek) %>% summarise(ArrDelay = n())


