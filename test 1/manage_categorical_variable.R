library(tidyverse)
library(forcats)
gss_cat %>% 
  mutate(race=fct_drop(race)) %>% 
  select(race) %>% 
  table()
gss_cat %>% 
  mutate(race=fct_drop(race)) %>% 
  mutate(race=fct_relevel(race,c("White","Black","Other"))) %>% 
  select(race) %>% 
  table()

gss_cat %>% 
  mutate(marital=fct_infreq(marital)) %>% 
  mutate(marital=fct_rev(marital)) %>% 
  ggplot(aes(marital)) + 
  geom_bar(fill="steelblue")
View(gss_cat)
gss_cat %>% 
  group_by(relig) %>% 
  summarise(meantv=mean(tvhours,na.rm = TRUE)) %>% 
  mutate(relig=fct_reorder(relig,meantv)) %>% 
  ggplot(aes(meantv,relig))+
  geom_point(size = 4,color="steelblue")


#loops

View(starwars)
for (i in 1:5) {
  print(starwars$name[i])
}
for(i in 1:length(starwars$height)){
  print(starwars$height[i])
}
tallness=vector(mode = "numeric",
                length = 5)
for(i in 1:5){
  tallness[i]<- starwars$height[i]/100
}
tallness

for(i in starwars$name){
  print(i)
  if(i=="Darth Vader"){
    break
  }
}
for(i in starwars$name){
  if(i=="C-3PO"){
    next
  }
  print(i)
  if(i=="Darth Vader"){
    break
  }
}

for(i in 1:5){
  cat("the height of",starwars$name[i],"is",tallness[i],"meters\n")
}
