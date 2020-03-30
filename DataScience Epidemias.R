city <- c("Lagos", "Kaduna", "Abuja", "Ondo")
state <- c("LG","KD","ABJ","ON")
zipcode <- c(33602,98104,06161,80294)

Country_1 <- cbind(city,state,zipcode)
Country_1

Country_2 <- data.frame(city = c("Ogun","Adamawa"),
                        state = c("OG","ADA"),
                        zipcode = c("80230","33949"),
                        stringsAsFactors = FALSE)
print(Country_2)

new.country = rbind(Country_1,Country_2)
new.country
Country_1
