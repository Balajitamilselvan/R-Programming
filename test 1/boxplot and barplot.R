library(tidyverse)
View(msleep)
msleep %>% 
  drop_na(vore) %>% 
  ggplot(aes(vore,sleep_total))+
  geom_boxplot()+
  coord_flip()+
  theme_bw()

msleep %>% 
  drop_na(vore) %>% 
  ggplot(aes(sleep_total))+
  geom_density(fill="steelblue")+
  facet_wrap(~vore)+
  theme_bw()


msleep %>% 
  drop_na(vore) %>% 
  #filter(vore=="herbi"| vore=="omni") %>% 
  filter(vore %in% c("herbi","omni")) %>% 
  ggplot(aes(fill=vore,sleep_total))+
  geom_density(alpha=0.2)+
  theme_bw()



View(starwars)
starwars %>% 
  filter(hair_color %in% c("black","brown")) %>% 
  drop_na(sex) %>% 
  ggplot(aes(hair_color,fill = sex))+
  geom_bar(position = "dodge",alpha=0.5)+
  facet_wrap(~hair_color)+
  theme_bw()+
  theme(panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        legend.position = "none")+
  labs(title = "gender and hair colour",x="hair colour",y="number")
