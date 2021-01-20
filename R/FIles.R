?ToothGrowth

df <- subset(ToothGrowth, ((dose == 0.5 & supp != "VC") | (dose == 2 & supp == "VC") ))
t_stat <- t.test(len ~ supp, df)$statistic

df <- read.csv("lekarstva.csv", "rt")
t.test(df$Pressure_after, df$Pressure_before, paired=T)$statistic

y <- read.table("dataset_11504_15")
b <- bartlett.test(V1 ~ V2, y)
if (b$p.value >= 0.05) {
  t.test(V1 ~ V2, y, paired = T)$p.value
} else {  wilcox.test(V1 ~ V2, y)$p.value }