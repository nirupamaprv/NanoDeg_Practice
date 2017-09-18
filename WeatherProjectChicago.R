#Load Packages
install.packages('ggplot2')
library(ggplot2)


setwd('//Users/nirupamaprv/Documents/nimmu/Nanodegree/WeatherProject')
getwd()

#Read Chicago city temperature averages
cityInfo <- read.csv('ChicagoResults.csv')
View(cityInfo)

#Read global temperature averages results
globalInfo <- read.csv('globalResults.csv')
View(globalInfo)

#Make graph with Chicago city info
ggplot(data = cityInfo)+
  geom_line(mapping = aes(x = year, y = FiveYearMA))

#Make graph with global temperatures
ggplot(data = globalInfo)+
  geom_line(mapping = aes(x = year, y = FiveYearMA))


#Make graph with Chicago city info- 10YrMA
ggplot(data = cityInfo)+
  geom_line(mapping = aes(x = year, y = TenYearMA))

#Make graph with global temperatures- 10YrMA
ggplot(data = globalInfo)+
  geom_line(mapping = aes(x = year, y = TenYearMA))

#Combine both graphs together in one plot, red color for Chicago's values
ggplot(data = cityInfo)+
  geom_line(mapping = aes(x = year, y = sevenDayMA), color = "red") +
  geom_line(data = globalInfo, aes(x=year, y=sevenDayMA))

#Combine both graphs together in one plot, green color for global averages
ggplot(data = cityInfo)+
  geom_smooth(mapping = aes(x = year, y = sevenDayMA)) +
  geom_smooth(data = globalInfo, aes(x=year, y=sevenDayMA), color = "green")


#Combine both graphs together in one plot, green color for global averages
#Show data points along with plotlines
ggplot(data = cityInfo)+
  geom_line(mapping = aes(x = year, y = sevenDayMA)) +
  geom_point(data = cityInfo , aes(x = year, y = sevenDayMA))+
  geom_line(data = globalInfo, aes(x=year, y=sevenDayMA), color = "green")+
  geom_point(data = globalInfo , aes(x = year, y = sevenDayMA), color = 'green')
  
#create visualization as above but using yearly values
ggplot(data = cityInfo)+
  geom_line(mapping = aes(x = year, y = avg_temp)) +
  geom_point(data = cityInfo , aes(x = year, y = avg_temp))+
  geom_line(data = globalInfo, aes(x=year, y=avg_temp), color = "green")+
  geom_point(data = globalInfo , aes(x = year, y = avg_temp), color = 'green')



#using Line Graphs to plot data
