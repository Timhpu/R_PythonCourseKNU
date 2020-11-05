df <- read.csv(file = 'hw1_data.csv', sep=";")

names(df)

df[1:6,]

dim(df)[1]

df[144:153,] #tail(df, 10)

sum(is.na(df$Ozone))


mean(df$Ozone, na.rm=TRUE) #summary ?


na.omit(df[(df$Ozone > 31) & (df$Temp > 90), ])

mean(df[(df$Ozone > 31) & (df$Temp > 90), ]$Solar.R, na.rm=TRUE)

mean(df[df$Month == 6, ]$Temp)

max(df[df$Month == 5, ]$Ozone, na.rm=TRUE)
