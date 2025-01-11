library(tidyverse)
View(msleep)
names(msleep)
msleep %>% 
  drop_na(sleep_rem,vore) %>% 
  group_by(vore) %>% 
  summarise("average total sleep"=mean(sleep_total),
            "maximum rem sleep"=max(sleep_rem)) %>% 
  View()

library(tidyverse)
library(gapminder)
View(gapminder)
gapminder_1 <- gapminder %>% 
  separate(col = year,
           into = c("century","year"),
           sep = 2) %>% 
  view

gapminder_1 %>% 
  unite(col=date,century,year,sep="") %>% 
  View()

