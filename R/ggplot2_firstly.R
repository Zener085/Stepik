ggplot(airquality, aes(x = Month, y = Ozone, grouo(Month))) +
  boxplot(Ozone~Month, airquality)

plot1 <- ggplot(mtcars, aes(x = mpg, y = disp, col = hp))+
  geom_point()

plot1
