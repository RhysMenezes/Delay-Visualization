data$airline <- data$UniqueCarrier

data$airline[data$airline == "AA"] = 'American Airlines'
data$airline[data$airline == "UA"] = 'United Airlines'
data$airline[data$airline == "US"] = 'US Airways'
data$airline[data$airline == "F9"] = 'Frontier Airlines'
data$airline[data$airline == "B6"] = 'JetBlue Airways'
data$airline[data$airline == "OO"] = 'Skywest Airlines'
data$airline[data$airline == "AS"] = 'Alaska Airlines'
data$airline[data$airline == "NK"] = 'Spirit Airlines'
data$airline[data$airline == "WN"] = 'Southwest Airlines'
data$airline[data$airline == "DL"] = 'Delta Airlines'
data$airline[data$airline == "EV"] = 'Atlantic Southeast'
data$airline[data$airline == "HA"] = 'Hawaiian Airlines'
data$airline[data$airline == "MQ"] = 'American Eagle Airlines'
data$airline[data$airline == "MQ"] = 'Virgin America'
data$airline[data$airline == "9E"] = 'Endeavor Air'
data$airline[data$airline == "AQ"] = 'Aloha Airlines'
data$airline[data$airline == "FL"] = 'AirTran'
data$airline[data$airline == "CO"] = 'Continental Airlines'
data$airline[data$airline == "NW"] = 'Northwest Airlines'
data$airline[data$airline == "OH"] = 'Comair'
data$airline[data$airline == "XE"] = 'ExpressJet'
data$airline[data$airline == "YV"] = 'Mesa Airlines'

data %>% group_by(UniqueCarrier) %>% 
summarise(ArrDelay = mean(ArrDelay), DepDelay = mean(DepDelay))

ggsave("monthgraph.png")

flights$carrier <- flights$AIRLINE

flights$carrier[flights$carrier == "AA"] = 'American carriers'
flights$carrier[flights$carrier == "UA"] = 'United carriers'
flights$carrier[flights$carrier == "US"] = 'US Airways'
flights$carrier[flights$carrier == "F9"] = 'Frontier carriers'
flights$carrier[flights$carrier == "B6"] = 'JetBlue Airways'
flights$carrier[flights$carrier == "OO"] = 'Skywest carriers'
flights$carrier[flights$carrier == "AS"] = 'Alaska carriers'
flights$carrier[flights$carrier == "NK"] = 'Spirit carriers'
flights$carrier[flights$carrier == "WN"] = 'Southwest carriers'
flights$carrier[flights$carrier == "DL"] = 'Delta carriers'
flights$carrier[flights$carrier == "EV"] = 'Atlantic Southeast'
flights$carrier[flights$carrier == "HA"] = 'Hawaiian carriers'
flights$carrier[flights$carrier == "MQ"] = 'American Eagle carriers'
flights$carrier[flights$carrier == "MQ"] = 'Virgin America'
flights$carrier[flights$carrier == "9E"] = 'Endeavor Air'
flights$carrier[flights$carrier == "AQ"] = 'Aloha carriers'
flights$carrier[flights$carrier == "FL"] = 'AirTran'
flights$carrier[flights$carrier == "CO"] = 'Continental carriers'
flights$carrier[flights$carrier == "NW"] = 'Northwest carriers'
flights$carrier[flights$carrier == "OH"] = 'Comair'
flights$carrier[flights$carrier == "XE"] = 'ExpressJet'
flights$carrier[flights$carrier == "YV"] = 'Mesa carriers'
flights$carrier[flights$carrier == "VX"] = 'Virgin America'

flights %>% group_by(airline) %>% 
summarise(ARRIVAL_DELAY = mean(ARRIVAL_DELAY ), DEPARTURE_DELAY = mean(DEPARTURE_DELAY))



df$airline <- df$UniqueCarrier

df$airline[df$airline == "AA"] = 'American airlines'
df$airline[df$airline == "UA"] = 'United airlines'
df$airline[df$airline == "US"] = 'US Airways'
df$airline[df$airline == "F9"] = 'Frontier airlines'
df$airline[df$airline == "B6"] = 'JetBlue Airways'
df$airline[df$airline == "OO"] = 'Skywest airlines'
df$airline[df$airline == "AS"] = 'Alaska airlines'
df$airline[df$airline == "NK"] = 'Spirit airlines'
df$airline[df$airline == "WN"] = 'Southwest airlines'
df$airline[df$airline == "DL"] = 'Delta airlines'
df$airline[df$airline == "EV"] = 'Atlantic Southeast'
df$airline[df$airline == "HA"] = 'Hawaiian airlines'
df$airline[df$airline == "MQ"] = 'American Eagle airlines'
df$airline[df$airline == "MQ"] = 'Virgin America'
df$airline[df$airline == "9E"] = 'Endeavor Air'
df$airline[df$airline == "AQ"] = 'Aloha airlines'
df$airline[df$airline == "FL"] = 'AirTran'
df$airline[df$airline == "CO"] = 'Continental airlines'
df$airline[df$airline == "NW"] = 'Northwest airlines'
df$airline[df$airline == "OH"] = 'Comair'
df$airline[df$airline == "XE"] = 'ExpressJet'
df$airline[df$airline == "YV"] = 'Mesa airlines'
df$airline[df$airline == "VX"] = 'Virgin America' 
