names <- c('peter','shalini','john','peter')
age <- c(22,32,44,22)
friends <- data.frame(names,age)
duplicated(friends)
friends[!duplicated(friends), ]
friends %>% 
  distinct() %>% 
  View()


require(tidyverse)
starwars %>% 
  select(name,gender) %>% 
  mutate(gender1 = recode(gender,'masculine'=1,'feminine'=2)) %>% 
 
  View()
