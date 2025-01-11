#barplot
require(tidyverse)
require(ggplot2)
starwars %>% 
  drop_na(height) %>% 
  ggplot(aes(height))+
  geom_histogram()
#boxplot
starwars %>% 
  drop_na(height) %>% 
  ggplot(aes(height))+
  geom_boxplot(fill="steelblue")+
  theme_bw()+
  labs(title = 'box plot of height',
       x='height of characters')
