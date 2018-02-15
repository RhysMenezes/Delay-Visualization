month<-data$Month
year<-data$Year
day<-data$DayofMonth
dayweek<-data$DayOfWeek
date <- as.Date(with(data, paste(Year, Month,DayofMonth,sep="-")), "%Y-%m-%d")
Value<-data$ArrDelay
depdelay<-data$DepDelay

date<-as.Date(date)
dff<-data.table(date,Value)
hi<-data.table(date,depdelay)

datt$monthf<-factor(datt$month,levels=as.character(1:12),labels=c("Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"),ordered=TRUE)
datt$weekdayf<-factor(datt$dayweek,levels=rev(1:7),labels=rev(c("Mon","Tue","Wed","Thu","Fri","Sat","Sun")),ordered=TRUE)
datt$yearmonth<-as.yearmon(datt$date)
datt$yearmonthf<-factor(datt$yearmonth)

dat$week <- as.numeric(format(dat$date,"%W"))
dat<-ddply(dat,.(yearmonthf),transform,monthweek=1+week-min(week))

ggplot(datt, aes(monthweek, weekdayf), fill=arrdelay) + 
    geom_tile(colour = "white") + facet_grid(year~monthf) + scale_fill_gradient(low="red", high="yellow") +
    xlab("Week of Month") + ylab("")

layer(data=datt, stat="identity",position = "identity")+

minimalTheme = theme_set(theme_bw(12))
minimalTheme = theme_update(
   axis.ticks = element_blank(), 
   legend.position = 'none',
   strip.background = element_blank(), 
   panel.border = element_blank(), 
   panel.background = element_blank(), 
   panel.grid = element_blank(), 
   panel.border = element_blank()
)

ggplot_calendar_heatmap(dff,'date','Value')+
   xlab(NULL) + 
   ylab(NULL) + 
   scale_fill_continuous(low = '#4f81bd', high = '#c0504d') + 
   facet_wrap(~Year, ncol = 2)


