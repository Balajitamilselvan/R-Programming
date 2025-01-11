require(tidyverse)
View(msleep)
msleep %>% 
  select(sleep_total,brainwt) %>% 
  summary

msleep %>% 
  drop_na(vore) %>% 
  group_by(vore) %>% 
  summarise(lower=min(sleep_total),
            average=mean(sleep_total),
            upper=max(sleep_total),
            difference=max(sleep_total)-min(sleep_total)) %>% 
  arrange(average) %>% 
  View()

require(MASS)
attach(Cars93)
glimpse(Cars93)
table(Origin)
table(AirBags,Origin)
addmargins(table(AirBags,Origin),1)
addmargins(table(AirBags,Origin),2)
addmargins(table(AirBags,Origin))
prop.table(table(AirBags,Origin)*100)
prop.table(table(AirBags,Origin),2)*100
round(prop.table(table(AirBags,Origin),2)*100)


Cars93 %>% 
  group_by(Origin,AirBags) %>% 
  summarise(number=n()) %>% 
  pivot_wider(names_from = Origin,values_from = number)

