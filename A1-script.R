#library(tidyr)


#Question 1:

# Import data
df <- read.csv("C:/Users/Addy/Desktop/Statistical Learning R/Assignment 1/data.csv")

View(df)

#Question 2:

df <- read.csv("C:/Users/Addy/Desktop/Statistical Learning R/Assignment 1/data.csv")

df <- df[0:2,]
View(df)

#Question 3:

df <- read.csv("C:/Users/Addy/Desktop/Statistical Learning R/Assignment 1/data.csv")

print(nrow(df))

#Question 4:

df <- read.csv("C:/Users/Addy/Desktop/Statistical Learning R/Assignment 1/data.csv")

df <- df[(nrow(df)-1):nrow(df),]
View(df)

#Question 5:

df <- read.csv("C:/Users/Addy/Desktop/Statistical Learning R/Assignment 1/data.csv")

df[47,1]
View(df)

#Question 6:

df <- read.csv("C:/Users/Addy/Desktop/Statistical Learning R/Assignment 1/data.csv")

print(sum(is.na(df)))

#Question 7:

df <- read.csv("C:/Users/Addy/Desktop/Statistical Learning R/Assignment 1/data.csv")

summary(df)

#Question 8:

df <- read.csv("C:/Users/Addy/Desktop/Statistical Learning R/Assignment 1/data.csv")

df <- df[df[, "Temp"] > 90,]
df <- df[df[, "Ozone"] > 31,]

summary(df)

#Question 9:

df <- read.csv("C:/Users/Addy/Desktop/Statistical Learning R/Assignment 1/data.csv")

df <- df[df[, "Month"] == 6,]
summary(df[,"Temp"])

#Question 10:

df <- read.csv("C:/Users/Addy/Desktop/Statistical Learning R/Assignment 1/data.csv")

df <- df[df[, "Month"] == 5,]
summary(df[,"Ozone"])




