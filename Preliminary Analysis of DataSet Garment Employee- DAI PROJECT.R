df <- read.csv(file.choose(), sep = ",")

summary(df)


df$department <- as.factor(df$department)
summary(df)

df$quarter <- as.factor(df$quarter)
df$day <- as.factor(df$day)
df$date <- as.factor(df$date)
summary(df)

model <- lm(actual_productivity ~ department + day + team + incentive + 
              over_time + no_of_workers + idle_men + no_of_style_change + 
              idle_time + smv + targeted_productivity, data = df)

plot(model)
