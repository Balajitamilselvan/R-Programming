require(tidyverse)
glimpse(msleep)
View(msleep)
msleep %>% 
  rename('conserv'='conservation') %>% 
  select(vore,name,bodywt,brainwt,everything())
msleep$vore  <- as.factor(msleep$vore)
glimpse(msleep)
msleep %>% 
  mutate(vore=as.factor(vore)) %>% 
  View()
names(msleep)
msleep %>% 
  select(2:4,
         awake,
         starts_with('sleep'),
         contains('wt')) %>% 
  names()
unique(msleep$order)
msleep %>% 
  filter((order=='Carnivora'|
          order=='Primates')&
         sleep_total >8) %>% 
  select(name,order,sleep_total) %>% 
  arrange(-sleep_total) %>% 
  View
msleep %>% 
  filter(order %in% c('Carnivora','Primates')&
           sleep_total >8) %>% 
  select(name,order,sleep_total) %>% 
  arrange(order) %>% 
  View




msleep %>% 
  mutate(brainwt = brainwt * 1000) %>% 
  View
  



msleep %>% 
  mutate(brainwt_in_grams = brainwt * 1000) %>% 
  View

msleep$brainwt > 0.1
size_of_brain <- msleep %>% 
  select(name,brainwt) %>% 
  drop_na(brainwt) %>% 
  mutate(brain_size=if_else(brainwt >0.01,"large","small"))
size_of_brain %>% 
  mutate(brain_size=recode(brain_size,"large"=1,"small"=2)) %>% 
  View()
