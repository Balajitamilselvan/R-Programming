library(tidyverse)
View(msleep)

msleep %>% 
  filter(bodywt < 2) %>% 
  ggplot(aes(bodywt,brainwt))+
  geom_point(aes(color=sleep_total,size=awake))+
  geom_smooth(method = lm,se=F)+
  labs(x="BODY WEIGHT",title = "BRAIN AND BODY WEIGHT",y="BRAIN WEIGHT")+
  theme_minimal()

View(Orange)
Orange %>% 
  filter(Tree!="2") %>% 
  ggplot(aes(age,circumference))+
  geom_point()+
  geom_smooth()+
  facet_wrap(~Tree)+
  theme_bw()+
  labs(title = "Tree age and circumference")


Orange %>% 
  filter(Tree !="1" & Tree!="2") %>% 
  ggplot(aes(age,circumference,colour = Tree))+
  geom_point(size=5,alpha=0.5)+
  geom_line(size=1)+
  theme_minimal()+
  labs(title = "Tree age and circumference")
  