library(gtExtras)
library(tidyverse)
iris %>% 
  gt_plt_summary()
mtcars %>% 
  group_by(cyl) %>% 
  summarize(meadian=round(median(mpg),1),
            mean=round(mean(mpg),1),
            distribution=list(mpg)) %>% 
  gt() %>% 
  gt_plt_dist(distribution) %>% 
  gt_theme_guardian() %>% 
  tab_header(title = "miles per gallon")
library(RColorBrewer)
library(gapminder)
plot <- gapminder %>% 
  filter(continent=="Europe") %>% 
  group_by(country) %>% 
  summarise(gdpPercap=round(mean(gdpPercap)),
            `pop_size`=round(mean(pop)),
            `life_exp`=list(lifeExp)) %>% 
  arrange(-gdpPercap) %>% 
  head(10) %>% 
  gt() %>% 
  gt_plt_dist(life_exp) %>% 
  tab_header(title = "the gdp and pop size of europe") %>% 
  cols_align(align = "left")



plot <- plot %>% gt_theme_pff()


plot %>% 
  gt_highlight_rows(rows = country %in% c("Iceland","Belgium"),
                    fill = "lightpink")
plot %>% 
  gt_plt_bar_pct(gdpPercap,
                 fill = "steelblue",
                 height = 15,
                 width = 100)
plot %>% 
  gt_color_rows(column = pop_size,
                palette = "Pastel1") %>% 
  gt_plt_bar_pct(gdpPercap,
                 fill = "steelblue",
                 height = 15,
                 width = 120)
