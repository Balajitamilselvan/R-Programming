library(tidyverse)
cars %>% 
  lm(dist~speed,data=.) %>% 
  summary()
mod <- lm(dist~speed,data = cars)
summary(mod)
mod$residuals
hist(mod$residuals)


new_speeds <- data.frame(speed=c(10,15,20))
predict(mod,new_speeds) %>% round(1)
cars %>% 
  lm(dist~speed,data=.) %>% 
  predict(data.frame(speed=c(10,15,20))) %>% 
  round(1)
#t test
my_data <- starwars %>% 
  select(sex,height) %>% 
  filter(sex %in% c("male","female")) %>% 
  drop_na(height)
t.test(height ~ sex,data = my_data)


starwars %>% 
  select(sex,height) %>% 
  filter(sex %in% c("male","female")) %>% 
  drop_na(height) %>% 
  t.test(height ~ sex,data=.)

