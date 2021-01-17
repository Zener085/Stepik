moving_average <- c()
i <- 10
while (i <= length((AirPassengers))) {
  moving_average[i - 9] <- mean(AirPassengers[(i - 9) : i])
  i <- i + 1
}
