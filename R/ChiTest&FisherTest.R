dimnames(HairEyeColor)

red_man <- HairEyeColor['Red','Blue' ,'Male']
blue_eyes_man <- HairEyeColor[,"Blue",'Male']
red_man_sum <- sum(red_man)
blue_eyes_man_sum <- sum(blue_eyes_man)
red_men <- red_man_sum / blue_eyes_man_sum
red_men
HairEyeColor

library("ggplot2")
mydata <- as.data.frame(HairEyeColor)
df <- subset(mydata, Sex == "Female")

obj <- ggplot(data = df, aes(x = Hair, y = Freq, fill = Eye, inherit.aes = TRUE)) +
  geom_bar(stat ="identity", position = "dodge") +
  scale_fill_manual(values=c("Brown", "Blue", "Darkgrey", "Darkgreen"))
obj


new_tab <- HairEyeColor["Brown", ,"Female"]
new_tab
?chisq.test(new_tab)

main_stat <- chisq.test(diamonds$cut, diamonds$color)$statistic
main_stat

diamonds$factor_price <- ifelse(diamonds$price >= mean(diamonds$price), 1, 0)
diamonds$factor_carat <- ifelse(diamonds$carat >= mean(diamonds$carat), 1, 0)
main_stat <- chisq.test(diamonds$factor_price, diamonds$factor_carat)$statistic
main_stat

fisher_test <- fisher.test(mtcars$am, mtcars$vs)$p.value
fisher_test
