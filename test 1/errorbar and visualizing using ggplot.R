library(tidyverse)
library(gapminder)
View(gapminder)
gapminder %>% 
  filter(continent %in% c("Africa","Europe")) %>% 
  filter(gdpPercap < 30000) %>% 
  ggplot(aes(x=gdpPercap,y=lifeExp,size = pop,colour = year))+
  geom_point() + 
  facet_wrap(~continent)+
  labs(title = "life expectancy explained by gdppercap",
       x="GDP per capital",
       y="life expectancy")

View(ToothGrowth)
theme_set(theme_bw()+theme(panel.grid.major = element_blank()))
ToothGrowth %>% 
  filter(supp == "VC") %>% 
  mutate(dose=as.factor(dose)) %>% 
  group_by(dose) %>% 
  summarise(mean_len=mean(len),
            sd_len=sd(len)) %>% 
  ggplot(aes(dose,mean_len))+
  geom_point(size=3,colour="blue")+
  geom_errorbar(aes(x=dose,
                    ymin=mean_len - sd_len,
                    ymax = mean_len + sd_len,
                    width=0.05))+
  labs(title="average tooth growth for VC")+
  xlab("dose")+
  ylab("Average tooth growth")
