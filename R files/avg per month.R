q1<-data %>% group_by(Month) %>% filter(airline=="American Airlines") %>% tally(ArrDelay)
q2<-data %>% group_by(Month) %>% filter(airline=="American Airlines") %>% tally
q3<-data.frame(q1,q2)
write.csv(q3, file = "american-airline-delay.csv",row.names=FALSE, na="",col.names=FALSE, sep=",")

q1<-data %>% group_by(Month) %>% filter(airline=="United Airlines") %>% tally(ArrDelay)
q2<-data %>% group_by(Month) %>% filter(airline=="United Airlines") %>% tally
q3<-data.frame(q1,q2)
write.csv(q3, file = "united-airlines-delay.csv",row.names=FALSE, na="",col.names=FALSE, sep=",")

q1<-data %>% group_by(Month) %>% filter(airline=="US Airway") %>% tally(ArrDelay)
q2<-data %>% group_by(Month) %>% filter(airline=="US Airway") %>% tally
q3<-data.frame(q1,q2)
write.csv(q3, file = "US Airway-delay.csv",row.names=FALSE, na="",col.names=FALSE, sep=",")

q1<-data %>% group_by(Month) %>% filter(airline=="Frontier Airlines") %>% tally(ArrDelay)
q2<-data %>% group_by(Month) %>% filter(airline=="Frontier Airlines") %>% tally
q3<-data.frame(q1,q2)
write.csv(q3, file = "Frontier-Airlines-delay.csv",row.names=FALSE, na="",col.names=FALSE, sep=",")

q1<-data %>% group_by(Month) %>% filter(airline=="JetBlue Airways") %>% tally(ArrDelay)
q2<-data %>% group_by(Month) %>% filter(airline=="JetBlue Airways") %>% tally
q3<-data.frame(q1,q2)
write.csv(q3, file = "JetBlue-Airways-delay.csv",row.names=FALSE, na="",col.names=FALSE, sep=",")

q1<-data %>% group_by(Month) %>% filter(airline=="Skywest Airlines") %>% tally(ArrDelay)
q2<-data %>% group_by(Month) %>% filter(airline=="Skywest Airlines") %>% tally
q3<-data.frame(q1,q2)
write.csv(q3, file = "Skywest-Airlines-delay.csv",row.names=FALSE, na="",col.names=FALSE, sep=",")

q1<-data %>% group_by(Month) %>% filter(airline=="Alaska Airlines") %>% tally(ArrDelay)
q2<-data %>% group_by(Month) %>% filter(airline=="Alaska Airlines") %>% tally
q3<-data.frame(q1,q2)
write.csv(q3, file = "Alaska Airlines-delay.csv",row.names=FALSE, na="",col.names=FALSE, sep=",")

q1<-data %>% group_by(Month) %>% filter(airline=="Spirit Airlines") %>% tally(ArrDelay)
q2<-data %>% group_by(Month) %>% filter(airline=="Spirit Airlines") %>% tally
q3<-data.frame(q1,q2)
write.csv(q3, file = "Spirit Airlines-delay.csv",row.names=FALSE, na="",col.names=FALSE, sep=",")

q1<-data %>% group_by(Month) %>% filter(airline=="Southwest Airlines") %>% tally(ArrDelay)
q2<-data %>% group_by(Month) %>% filter(airline=="Southwest Airlines") %>% tally
q3<-data.frame(q1,q2)
write.csv(q3, file = "Southwest Airlines-delay.csv",row.names=FALSE, na="",col.names=FALSE, sep=",")

q1<-data %>% group_by(Month) %>% filter(airline=="Delta Airlines") %>% tally(ArrDelay)
q2<-data %>% group_by(Month) %>% filter(airline=="Delta Airlines") %>% tally
q3<-data.frame(q1,q2)
write.csv(q3, file = "Delta Airlines.csv",row.names=FALSE, na="",col.names=FALSE, sep=",")

q1<-data %>% group_by(Month) %>% filter(airline=="Atlantic Southeast") %>% tally(ArrDelay)
q2<-data %>% group_by(Month) %>% filter(airline=="Atlantic Southeast") %>% tally
q3<-data.frame(q1,q2)
write.csv(q3, file = "Atlantic Southeast.csv",row.names=FALSE, na="",col.names=FALSE, sep=",")

q1<-data %>% group_by(Month) %>% filter(airline=="Hawaiian Airlines") %>% tally(ArrDelay)
q2<-data %>% group_by(Month) %>% filter(airline=="Hawaiian Airlines") %>% tally
q3<-data.frame(q1,q2)
write.csv(q3, file = "Hawaiian Airlines.csv",row.names=FALSE, na="",col.names=FALSE, sep=",")

q1<-data %>% group_by(Month) %>% filter(airline=="American Eagle Airlines") %>% tally(ArrDelay)
q2<-data %>% group_by(Month) %>% filter(airline=="American Eagle Airlines") %>% tally
q3<-data.frame(q1,q2)
write.csv(q3, file = "American Eagle Airlines.csv",row.names=FALSE, na="",col.names=FALSE, sep=",")

q1<-data %>% group_by(Month) %>% filter(airline=="Virgin America") %>% tally(ArrDelay)
q2<-data %>% group_by(Month) %>% filter(airline=="Virgin America") %>% tally
q3<-data.frame(q1,q2)
write.csv(q3, file = "Virgin America.csv",row.names=FALSE, na="",col.names=FALSE, sep=",")

q1<-data %>% group_by(Month) %>% filter(airline=="Endeavor Air") %>% tally(ArrDelay)
q2<-data %>% group_by(Month) %>% filter(airline=="Endeavor Air") %>% tally
q3<-data.frame(q1,q2)
write.csv(q3, file = "Endeavor Air.csv",row.names=FALSE, na="",col.names=FALSE, sep=",")

q1<-data %>% group_by(Month) %>% filter(airline=="Aloha Airlines") %>% tally(ArrDelay)
q2<-data %>% group_by(Month) %>% filter(airline=="Aloha Airlines") %>% tally
q3<-data.frame(q1,q2)
write.csv(q3, file = "Aloha Airlines.csv",row.names=FALSE, na="",col.names=FALSE, sep=",")

q1<-data %>% group_by(Month) %>% filter(airline=="AirTran") %>% tally(ArrDelay)
q2<-data %>% group_by(Month) %>% filter(airline=="AirTran") %>% tally
q3<-data.frame(q1,q2)
write.csv(q3, file = "AirTran.csv",row.names=FALSE, na="",col.names=FALSE, sep=",")

q1<-data %>% group_by(Month) %>% filter(airline=="Continental Airlines") %>% tally(ArrDelay)
q2<-data %>% group_by(Month) %>% filter(airline=="Continental Airlines") %>% tally
q3<-data.frame(q1,q2)
write.csv(q3, file = "Continental Airlines.csv",row.names=FALSE, na="",col.names=FALSE, sep=",")

q1<-data %>% group_by(Month) %>% filter(airline=="Northwest Airlines") %>% tally(ArrDelay)
q2<-data %>% group_by(Month) %>% filter(airline=="Northwest Airlines") %>% tally
q3<-data.frame(q1,q2)
write.csv(q3, file = "Northwest Airlines.csv",row.names=FALSE, na="",col.names=FALSE, sep=",")

q1<-data %>% group_by(Month) %>% filter(airline=="ExpressJet") %>% tally(ArrDelay)
q2<-data %>% group_by(Month) %>% filter(airline=="ExpressJet") %>% tally
q3<-data.frame(q1,q2)
write.csv(q3, file = "ExpressJet.csv",row.names=FALSE, na="",col.names=FALSE, sep=",")

q1<-data %>% group_by(Month) %>% filter(airline=="Mesa Airlines") %>% tally(ArrDelay)
q2<-data %>% group_by(Month) %>% filter(airline=="Mesa Airlines") %>% tally
q3<-data.frame(q1,q2)
write.csv(q3, file = "Mesa Airlines.csv",row.names=FALSE, na="",col.names=FALSE, sep=",")