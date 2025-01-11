library(tidyverse)
library(plotly)
p <- starwars %>% 
  drop_na(height,mass,eye_color) %>% 
  filter(mass < 250) %>% 
  filter(eye_color %in% c("blue","black","brown","pink","red","orange")) %>% 
  ggplot(aes(x=height,y=mass,color=eye_color))+
  geom_jitter(size=6,alpha=0.5)+
  scale_color_manual(values = c("blue"="blue",
                                "black"="black",
                                "brown"="brown",
                                "pink"="pink",
                                "red"="red",
                                "orange"="orange"))+
  theme_bw()+
  theme(legend.position = c(0.5,0.98),
        legend.justification = c("left","top"))+
  labs(title = "height,mass and eye colour",
       x="height",
       y="mass",
       color="eye color")

p


ggplotly(p)
view(starwars)

trees %>% 
  plot_ly(x=~Girth,
          y=~Height,
          z=~Volume)
plot_ly(z=volcano,type = "surface")














