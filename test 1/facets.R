library(gapminder)
View(gapminder)
library(tidyverse)
gapminder %>% 
  filter(gdpPercap < 40000 &
           continent != "Oceania") %>% 
  ggplot(mapping = aes(x=gdpPercap,y=lifeExp,colour = year))+
  geom_point(shape="square",
             alpha=0.4,
             size=2)+
  facet_wrap(~continent)+
  geom_smooth(se=F)+
  labs(title = "Life expectancy as a function of wealth",
       x="GDP per capacity",
       y="life expectancy",
       colour="year")+
  theme_bw()




library(forcats)
View(gss_cat)
gss_cat %>% 
  filter(partyid %in% c("Independent","Strong republican","Strong democrat")) %>% 
  ggplot(aes(age)) +
  geom_histogram(binwidth = 5,fill="steelblue",
                 alpha=0.8)+
  facet_wrap(~partyid,nrow = 1,ncol = 3,strip.position = "bottom")+
  labs(title = "age distribuution by pollitical affiliation",x="",y="")+
  theme_bw()



gss_cat %>% 
  mutate(relig=recode(relig,"Moslem/islam"="Muslim")) %>% 
  filter(relig %in% c("Muslim","Christian") &
         partyid %in% c("Independent","Strong republican","Strong democrat")&
           tvhours < 10) %>% 
  ggplot(aes(x=tvhours,color=partyid,fill = partyid))+
  geom_density(alpha=0.5,show.legend = T)+
  facet_grid(relig~partyid)+
  labs(title = "tv watching by pollitical and religious affiliation",
       x="hour spent watching tv",
       y="")+
  theme_bw()







