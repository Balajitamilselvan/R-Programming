library(tidyverse)
library(gtExtras)


starwars %>% 
  mutate(name_parts=str_split(name," ")) %>% 
  select(name,name_parts) %>% 
  view()


starwars %>% 
  select(name,species) %>% 
  mutate(species=str_to_upper(species)) %>% 
  gt() %>% 
  tab_header(title="species variable now in high case") %>% 
  cols_align(align = "left") %>% 
  gt_theme_538()

starwars %>% 
  select(name,species) %>% 
  mutate(species=str_replace_all(species,c("Huamn"="homo sapiens",
                                           "Droid"="automation"))) %>% 
  gt() %>% 
  tab_header(title ="improvised species") %>% 
  cols_align(align = "left") %>% 
  gt_theme_538()
starwars %>% 
  pull(name) %>% 
  str_locate(" ") %>% 
  view()
starwars %>% 
  filter(species=="Human") %>% 
  mutate(first_name=str_sub(name,1,str_locate(name," ")[ ,1]-1)) %>% 
  select(name,first_name) %>% 
  gt() %>% 
  tab_header(title = "name sof starwars characters") %>% 
  cols_align(align = "left") %>% 
  gt_theme_538()

mtcars %>% 
  mutate(model=rownames(mtcars)) %>% 
  mutate(short_names=str_sub(model,1,3)) %>% 
  select(model,short_names,mpg,cyl,disp) %>% 
  gt() %>% 
  tab_header(title = "short name of mosels") %>% 
  cols_align(align = "left") %>% 
  gt_theme_538()



mtcars %>% 
 mutate(model=rownames(mtcars)) %>% 
  mutate(has_m=str_detect(model,"M")) %>% 
  filter(has_m==T) %>% 
  select(model,mpg,cyl,disp) %>% 
  gt() %>% 
  tab_header(title = "cars that contains m") %>% 
  cols_align(align = "left") %>% 
  gt_theme_538()
View(iris)  
iris %>% 
  select(Species,Sepal.Length) %>% 
  mutate(description=str_c(Species,": ",Sepal.Length,
                           "cm")) %>% 
  gt() %>% 
  tab_header(title = "iris datset with description") %>% 
  cols_align(align = "left") %>% 
  gt_theme_538()
  
  
  
  
  
  
  
  
  
  
  
  
  
first <- "john"
last <- "balaju"
str_c(first,last,sep=" ")
