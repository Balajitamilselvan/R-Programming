library(tidyverse)
library(gganimate)
library(babynames)
library(viridis)
library(gapminder)
library(RColorBrewer)
library(magick)
View(babynames)
babynames %>% 
  filter(name %in% c("James","Paul","Andrew","John")) %>% 
  filter(sex == "M" ) %>% 
  ggplot(aes(x=year,y=n,group=name,color=name))+
  geom_line(linewidth=1.5)+
  theme_bw()+
  scale_color_viridis(discrete = TRUE)+
  labs(title = "popularity of american names in the previous year",
       x="",
       y="",
       color="names")+
  theme(plot.title = element_text(size=10,color = "steelblue"))+
  transition_reveal(year)


ggplot(gapminder,aes(x=gdpPercap,y=lifeExp,size=pop,color=continent))+
  geom_point()+
  scale_x_log10()+
  theme_bw()+
  labs(title = "year : {frame_time}",
       x="gdp per capita",
       y="life expectancy")+
  theme(plot.title = element_text(size = 60,
                                  hjust = 0.5,
                                  color = "steelblue"))+
  transition_time(year)




gapminder %>% 
  ggplot(aes(x=gdpPercap,y=lifeExp,color=country,size=pop))+
  geom_point(alpha=0.7,
             show.legend = F)+
  scale_colour_manual(values = country_colors)+
  scale_size(range = c(2,12))+
  scale_x_log10()+
  facet_wrap(~continent)+
  theme_bw()+
  labs(title = "year :{frame_time}",
       x="gdp per capita",
       y="life expectancy")+
  theme(plot.title = element_text(size=60,hjust = 0.5,
                                  color = "steelblue"))+
  transition_time(year)

ggplot(ChickWeight,aes(x=factor(Diet),
                       y=weight,
                       fill=Diet))+
         geom_bar(stat = "identity")+
         theme_bw()+
         scale_fill_brewer(palette = "Set2")+
         labs(title = "time :{frame_time}",
              x="Diet",
              y="Weight")+
         theme(plot.title = element_text(size=20, color = "steelblue"))+
         transition_time(Time)
         

View(ChickWeight)
unique(babynames$name)
install.packages("gganimate")
