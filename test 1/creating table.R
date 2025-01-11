library(tidyverse)
library(gapminder)
library(gtExtras)
library(RColorBrewer)
gapminder %>% 
  filter(continent =="Europe") %>% 
  group_by(country) %>% 
  summarise(gdp_pc=round(mean(gdpPercap)),
            pop_size=round(mean(pop)),
            life_expectancy=list(lifeExp)) %>% 
  arrange(-gdp_pc) %>% 
  head(10) %>% 
  gt() %>% 
  gt_plt_dist(life_expectancy) %>% 
  tab_header(title = "the GDP and pop size of europe") 


