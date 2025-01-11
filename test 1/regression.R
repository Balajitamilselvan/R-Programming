library(tidyverse)
View(women)
women %>% 
  ggplot(aes(height,weight))+
  geom_point(size=3,alpha=0.5)+
  geom_smooth(method = lm,se=F)+
  theme_bw()
mod_1 <- lm(height~weight,data = women)
summary(mod_1)


library(MASS)
lm(Fertility~.,data = swiss) %>% 
  step(direction = "backward",trace = 0) %>% 
  summary()


mtcars %>% 
  ggplot(aes(wt,mpg))+
  geom_point()+
  geom_smooth(method = lm,se=F)+
  theme_bw()















