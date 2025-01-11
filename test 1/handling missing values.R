library(tidyverse)
library(forcats)
View(gss_cat)
my_data <- gss_cat %>% 
  select(marital) %>% 
  filter(marital %in% c("Married","Never married","Divorced")) %>% 
  mutate(marital=fct_drop(marital))
my_table <- table(my_data) 
View(my_table)
chisq.test(my_table)
my_data %>% 
  table() %>% 
  chisq.test()



library(tidyverse)
library(naniar)
library(gtExtras)
View(airquality)
View(starwars)
miss_var_summary(airquality) %>% 
  gt() %>% 
  gt_theme_guardian() %>% 
  tab_header(title = "missingness of variable")

gg_miss_var(airquality)
airquality %>% 
  filter(!complete.cases(.)) %>% 
  gt() %>% 
  gt_theme_guardian() %>% 
  tab_header(title = "rows that contains missing values")
vis_miss(airquality)

airquality %>% 
  mutate(mizzing_ozone=factor(is.na(Ozone),
                               levels = c("TRUE","FALSE"),
                               labels = c("missing","not missing"))) %>% 
  ggplot(aes(x=Wind,fill=mizzing_ozone))+
  geom_histogram(position = "stack")+
  labs(title = "distribution of wind speeds for missing values",
       x="wind speed",
       y="ozone observation",
       fill="missingness")+
  theme_bw()
names(airquality)



