library(car)
View(Salaries)
library(tidyverse)
library(forcats)
theme_set(theme_bw(theme(title = element_text(colour = "steelblue",face = "bold"))))
Salaries %>% 
  mutate(discipline=factor(discipline,levels=c("A","B"),
                           labels=c("Agriculture","Biolody"))) %>% 
  ggplot(aes(yrs.since.phd,salary))+
  geom_point(aes(color=rank),alpha=0.5)+
  geom_smooth()+
  facet_grid(sex~discipline)+
  labs(title = "salary vs years since phd",
       x="number of year since phd",
       y="current salary",
       color="position")


mpg %>% 
  ggplot(aes(x=cty,fill = drv))+
  geom_density(alpha=0.3)+
  theme_bw()
  ggsave("mpg plot.png",height = 7,width = 10,units = "cm",dpi = 300)
  
  
library(RColorBrewer)
diplay.brewer.all(colorblindFriendly=TRUE)
  
  
  
mpg %>% 
  ggplot(aes(displ,hwy,color=drv)) +
  geom_jitter(size=5)+
  scale_color_brewer(palette = "Set2")+
  theme_minimal()
mpg %>% 
  ggplot(aes(displ,hwy))+
  geom_jitter(size=5)+
  scale_color_manual(values = c("4"="darkblue","f"="darkred","r"="darkgreen"))+
  theme_minimal()
  
  
View(mpg)
  
  
  
  
  