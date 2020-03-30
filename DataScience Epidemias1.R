
covid19 <- Casos_de_COVID19
covid19
Dengue2020 <- Casos_de_Dengue
Dengue2020


library(ggplot2)
library(dygraphs)
library(xts)
?xts
covid19

p <- ggplot(covid19, aes(Data, Casos))+
  geom_point(size = 2, colour = "Blue")+
  geom_line()+
  geom_smooth(Data ~ Casos)
  xlab("") + ylab("Casos de COVID-19")
p

p1 <- ggplot(Dengue2020, aes(Data, Casos))+
  geom_point(size = 2, colour = "Blue")+
  geom_smooth()+ 
xlab("") + ylab("Casos de Dengue")
p1

p1 <- dygraph(Casos_de_COVID19)%>%
  dyOptions(drawPoints = TRUE, pointSize = 4)
p1


covid19
p2 <- ggplot(covid19, aes(x = Data, y = Casos))+
  geom_line()+
  scale_x_date(format = "%b-%Y")+
  xlab("") + ylab("Numero de Casos")


p <- dygraph(covid19) %>%
  dyOptions( fillGraph=TRUE )
p