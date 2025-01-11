library(tidyverse)
names(mpg)
mpg %>% 
  filter(hwy < 35) %>% 
  ggplot(aes(x=displ,y=hwy,colour = drv))+
  geom_point()+
  geom_smooth(method = lm,se=F)+
  labs(x="Engine size",y="mpg on the highway")+
  theme_minimal()
  