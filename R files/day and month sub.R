data$Day_of_Week<-data$DayOfWeek
data$Month_of_Year<-data$Month

data$Day_of_Week[data$Day_of_Week==1]='Monday'
data$Day_of_Week[data$Day_of_Week==2]='Tuesday'
data$Day_of_Week[data$Day_of_Week==3]='Wednesday'
data$Day_of_Week[data$Day_of_Week==4]='Thursday'
data$Day_of_Week[data$Day_of_Week==5]='Friday'
data$Day_of_Week[data$Day_of_Week==6]='Saturday'
data$Day_of_Week[data$Day_of_Week==7]='Sunday'

data$Month_of_Year[data$Month_of_Year==1]='January'
data$Month_of_Year[data$Month_of_Year==2]='February'
data$Month_of_Year[data$Month_of_Year==3]='March'
data$Month_of_Year[data$Month_of_Year==4]='April'
data$Month_of_Year[data$Month_of_Year==5]='May'
data$Month_of_Year[data$Month_of_Year==6]='June'
data$Month_of_Year[data$Month_of_Year==7]='July'
data$Month_of_Year[data$Month_of_Year==8]='August'
data$Month_of_Year[data$Month_of_Year==9]='September'
data$Month_of_Year[data$Month_of_Year==10]='October'
data$Month_of_Year[data$Month_of_Year==11]='November'
data$Month_of_Year[data$Month_of_Year==12]='December'
