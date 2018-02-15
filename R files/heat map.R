data %>% group_by(airport) %>% 
summarise(ArrDelay = mean(ArrDelay), DepDelay = mean(DepDelay)) %>% arrange(desc(ArrDelay))

df<-read_csv("arrstates.csv")

region <- df$region
value <-df$value

df1<-data.frame(region,value)

state_choropleth(df,
title = "delays",
legend = "delays")

admin1_choropleth("united states of america",
df,"state in america","total delays")



choroplethr(df1, lod="state")