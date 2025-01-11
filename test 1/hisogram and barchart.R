library(tidyverse)
View(msleep)
names(msleep)
msleep %>% 
  drop_na(vore) %>% 
  ggplot(aes(x=vore))+
  #coord_flip()+
  geom_bar(fill="#97B3C6")+
  theme_bw()+
  labs(x="vore",y=NULL,title = "number of observation per order")
library(tidyverse)

msleep %>% 
  drop_na(vore) %>% 
  ggplot(aes(fct_infreq(vore))) +
  #coord_flip()+
  geom_bar(fill="#97B3C6")+
  theme_bw()+
  labs(x="vore",y=NULL,title = "number of observation per order")

msleep %>% 
  ggplot(aes(awake)) +
  geom_histogram(binwidth = 2,fill="#97B3C6")+
  theme_bw()+
  labs(x="Total sleep",y=NULL,title = "histogram of total sleep")
