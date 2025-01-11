library(tidyverse)
View(msleep)
my_data <- msleep %>% 
  select(vore,sleep_rem) %>% 
  drop_na()

mod_1 <- aov(sleep_rem~vore,data = msleep)
summary(mod_1)

msleep %>% 
  select(vore,sleep_rem) %>% 
  drop_na() %>% 
  aov(sleep_rem~vore,dat=.) %>% 
  summary()




library(forcats)
View(gss_cat)
my <- gss_cat %>% 
  select(marital) %>% 
  filter(marital %in% c("Never married",
                        "Married",
                        "Divorced")) %>% 
  mutate(marital=fct_drop(marital))
my_able <- table(my)
View(my_able)


chisq.test(my_able)
