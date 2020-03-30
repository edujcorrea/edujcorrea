# Library
library(dygraphs)
library(xts)

# Create data 
data <- data.frame(
  time=seq(from=Sys.Date()-40, to=Sys.Date(), by=1 ), 
  value=runif(41)
)
data
covid19 <- Casos_de_COVID19
covid19
dengue <- Casos_de_Dengue
dengue


# Double check time is at the date format
str(data$time)
str(covid19$Data)

# Switch to XTS format
data <- xts(x = data$value, order.by = data$time)
covid19 <- xts(x = covid19$Casos, order.by = covid19$Data)
dengue <- xts(x = dengue$Casos, order.by = dengue$Data)



covid19
p1 <- dygraph(covid19) %>%
  dyOptions(drawPoints = TRUE, pointSize = 4, fillGraph = TRUE)%>%
  labs(title = "Casos de COVID-19 em Minas Gerais", sub = "Fonte: Boletim Epidemiológico da SES", xlab = "Data", ylab = "Número de casos confirmados")
p1

p2 <- dygraph(dengue) %>%
  dyOptions(drawPoints = TRUE, pointSize = 4, fillGraph = TRUE)%>%
  labs(title = "Casos de Dengue em Minas Gerais", sub = "Fonte: Boletim Epidemiológico da SES", xlab = "Data", ylab = "Número de casos prováveis")
p2

install.packages("dplyr")
install.packages("patchwork")
install.packages("hrbrthemes")

library(ggplot2)
library(dplyr)
library(patchwork) # To display 2 charts together
library(hrbrthemes)

#---------------------------------------
library()
p1 <- ggplot(Casos_de_COVID19, aes(x=Data, y=Casos)) +
  geom_line(color="#69b3a2", size=2) +
  ggtitle("Casos de COVID-19 em MG") +
  theme_ipsum()

p2 <- ggplot(Casos_de_Dengue, aes(x=Data, y=Casos)) +
  geom_line(color="grey",size=2) +
  ggtitle("Casos de Dengue em MG") +
  theme_ipsum()

# Display both charts side by side thanks to the patchwork package
p1 + p2

#---------------------
# Start with a usual ggplot2 call:
ggplot(data, aes(x=day, y=temperature)) +
  
  # Custom the Y scales:
  scale_y_continuous(
    
    # Features of the first axis
    name = "First Axis",
    

data <- data.frame(
  day = as.Date("2020-03-01") + 0:200,
      Covid-19 = Casos_de_COVID19$Casos,
      Dengue = Casos_de_Dengue$Casos))
data

Casos_de_COVID19
