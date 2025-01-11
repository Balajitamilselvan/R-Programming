#library(tidyverse)
#sw <- starwars %>%
#  select(name,height,mass,gender) %>%
#  rename(weight=mass) %>%
#  group_by(gender)


require(tidyverse)
data_1 <- starwars %>%
  select(name,height,mass,gender) %>%
  na.omit() %>%
  mutate(height=height / 100) %>%
  mutate(gender= recode(gender,masculine="male",feminine="female")) %>%
  mutate(gender=recode(gender,male="m",female="f")) %>%
  filter(gender == "m") %>%
  mutate(size = mass>75 & height>1,
         size=if_else(size==TRUE,"big","small"))



