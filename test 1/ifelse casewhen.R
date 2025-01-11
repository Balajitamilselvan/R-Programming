library(tidyverse)
library(gtExtras)
starwars %>% 
  select(name,hair_color,species) %>% 
  mutate(hair_color=if_else(
    is.na(hair_color)&species=="Droid","no hair",hair_color)) %>% 
  gt() %>% 
  gt_theme_guardian() %>% 
  tab_header(title = "starwar characters") %>% 
  gt_highlight_rows(rows = species=="Droid",
                    fill="steelblue")



