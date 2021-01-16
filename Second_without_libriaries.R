df <- mtcars

result <- mean(df$qsec[df$cyl != 3 & df$mpg > 20])

descriptions_stat <- aggregate(df[,c(3, 4)],by = list(df$am), FUN = sd)

result <- aggregate(Ozone ~ Wind, subset(airquality, Month %in% 8), length)


