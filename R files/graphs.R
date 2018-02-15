ggplot(data, aes(x = reorder(airline, -ArrDelay), y=ArrDelay, color="black", fill=airline)) + 
stat_summary(fun.y="mean", geom="bar", stat="Identity", color="black")+ 
scale_fill_manual(values=c("blue", "white", "blue", "white","blue", "white","blue", "white","blue", "white", "blue", "white", "blue", "white","blue", "white","blue", "white","blue", "white")) +
theme(axis.text.x = element_text(angle = 90,hjust=1,vjust=0.5))+
ggtitle("Average Delay Per Airline") + labs(x="Airlines ", y="Average Delay Time (mins)") +
theme(axis.text.x=element_text(colour="black", size = 10), axis.text.y=element_text(colour="black", size = 10), legend.key=element_rect(fill="white", colour="white")) 

+ theme(axis.text.x=element_text(angle=90,hjust=1,vjust=0.5)), theme(plot.title=element_text(family="xkcd"),
        axis.text.x=element_text(colour="black", size = 10),
        axis.text.y=element_text(colour="black", size = 10),
        legend.key=element_rect(fill="white", colour="white"))

geom_smooth(method=lm , color="red", se=FALSE)

ggsave("monthlyheatmapomg5.png")

stat_summary(fun.y="sum", geom="point")


p<-ggplot(data, aes(x = reorder(airline, ArrDelay), y=ArrDelay, color="black")) + 
stat_summary(aes(group=3,color="Arrival Delay"),size=1.5, fun.y="mean", geom="bar") +
stat_summary(aes(group=3,color="Departure Delay", x= airline, y=DepDelay), size=1.5,fun.y="mean", geom="bar") +
theme_minimal()
p+labs(x="Airlines ", y="Average Delay Time (mins)")+ theme_minimal()+
theme(axis.title = element_text(family = "Trebuchet MS", color="#666666", face="bold", size=16))+
theme(legend.position="top", legend.direction="horizontal")+
coord_flip()

data<-read_csv("DelayedFlights.csv")

melt(df, id.vaars="airline", measure.vars=c("ArrDelay", "DepDelay"))
ggplot(df, aes(x=airline, y=ArrDelay, fill=airline))+geom_bar(stat='summary', func.y="mean", position='dodge')+
coord_flip()