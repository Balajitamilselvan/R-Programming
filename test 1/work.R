require(tidyverse)
View(starwars)
####
glimpse(starwars)
unique(starwars$gender)
count(starwars$height)
levels(starwars$gender)
starwars$gender <- as.factor(starwars$gender)
starwars$gender <- factor((starwars$gender),levels = c("masculine","feminine"))
levels(starwars$gender)

starwars %>%
  select(name,height,ends_with('color')) %>%
  filter(hair_color %in% c("blond","brown") &
           height < 180)
####
?####
mean(starwars$height,na.rm = TRUE)
starwars %>% 
  select(name,gender,hair_color,height)

starwars %>% 
  select(name,gender,hair_color,height) %>% 
  na.omit()
starwars %>% 
  select(name,gender,hair_color,height) %>% 
  filter(!complete.cases(.)) %>% 
  drop_na(height) %>% 
  View()
starwars %>% 
  select(name,gender,hair_color,height) %>% 
  filter(!complete.cases(.)) %>% 
  mutate(hair_color= replace_na(hair_color,"none")) %>% 
  View()

