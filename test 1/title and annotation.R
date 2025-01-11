library(tidyverse)
library(forcats)
mtcars %>% 
  ggplot(aes(wt,mpg))+
  geom_point(size=3,
             colour="steelblue",
             alpha=0.5)+
  labs(title="weight vs miles per gallon",
       x="weight",
       y="miles per gallon")+
  theme_bw()

Orange %>% 
  ggplot(aes(age,circumference,color=Tree))+
  geom_line()+
  theme_bw()

mpg %>% 
  ggplot(aes(class))+
  geom_bar(fill="steelblue",alpha=0.5)+
  theme_bw()

mpg %>% 
  ggplot(aes(cty))+
  geom_histogram()+
  theme_bw()




mtcars %>% 
  ggplot(aes(wt,mpg,colour = factor(gear)))+
  geom_point(size=3,alpha=0.6)+
  labs(title = "weight vs miles per galloon",
       x="weight",
       y="miles per galloon",
       colour="gears")+
  theme_bw()+
  theme(plot.title = element_text(size = 18,face = "bold",color="steelblue",hjust = 0.6),
        axis.text  = element_text(size = 10,color="grey",face = "bold"),
        axis.title = element_text(size=12,color="steelblue"))+
  theme(legend.position = c(0.9,0.8))+
  annotate("text",x=4,y=30,label="notice the difference \n
           between cars with \n three and four gears",
           color="black",
           face="bpld",
           size=4)+
  geom_segment(x=4.5,y=27,
               xend=5,yend=17,
               arrow = arrow(length = unit(0.7,"cm")),
               color="green",
               size=1.5)+
  geom_segment(x=3.4,y=30,
               xend=2.4,yend=30,
               arrow = arrow(length = unit(0.7,"cm")),
               color="darkred",
               size=1.5)
