#1

setwd("C:\\Users\\ASUS\\Downloads\\Lab 05-20250826")
Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE)
head(Delivery_Times)

#2

breaks <- seq(20, 70, length.out = 10)
hist(Delivery_Times$Delivery_Time,
     breaks = breaks,
     right = FALSE,                      
     main = "Histogram of Delivery Times",
     xlab = "Delivery Time (minutes)",
     col = "lightblue",
     border = "black")

#3

# The distribution of delivery times is approximately symmetric 
# with a slight positive skew, as most values are clustered around the center 
# (35–55 minutes) and a few larger values stretch the distribution to the right.

#4

breaks <- seq(20, 70, length.out = 10)
hist_data <- hist(Delivery_Times$Delivery_Time,
                  breaks = breaks,
                  right = FALSE,
                  plot = FALSE)


cum_freq <- cumsum(hist_data$counts)
plot(hist_data$breaks[-1], cum_freq, type = "o",
     main = "Cumulative Frequency Polygon (Ogive)",
     xlab = "Delivery Time (minutes)",
     ylab = "Cumulative Frequency",
     col = "red", pch = 16)




