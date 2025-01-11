require(tidyverse)
starwars %>% 
  filter(height > 150 & mass <200) %>% 
  mutate(height_in_meters=height/100) %>% 
  select(height_in_meters,mass) %>% 
  arrange(mass) %>% 
  #View()
  plot()

levels(starwars$sex)

View(starwars)
plot(pressure)
require(ggplot2)
ggplot(data=starwars,
       mapping=aes(x=gender)) + geom_bar() 

require(tidyverse)
starwars %>% 
  drop_na(height) %>% 
  ggplot(aes(height))+
  geom_histogram()

