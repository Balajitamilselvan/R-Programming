library(tidyverse)
library(forcats)
View(msleep)
theme_set(theme_bw()+theme(panel.grid = element_blank()))

msleep %>% 
  group_by(order) %>% 
  summarise(mean_sleep=mean(sleep_total)) %>% 
  mutate(order=fct_reorder(order,mean_sleep)) %>% 
  ggplot(aes(x=order,y=mean_sleep))+
  geom_point(size=3,
             colour="orange")+
  geom_segment(aes(x=order,
                   y=mean(msleep$sleep_total),
                   xend = order,
                   yend = mean_sleep),
               colour="grey")+
  geom_hline(yintercept = mean(msleep$sleep_total),
             colour="grey",
             size=1)+
  theme(axis.text.x = element_text(angle = 90))+
  labs(title = "average sleep time of mammals by order",
       x="",
       y="hours")




library(car)
library(tidyverse)
View(Salaries)
Salaries %>% 
  ggplot(aes(x=yrs.since.phd,
             y=salary,
             colour = rank))+
  geom_point()

Salaries %>% 
  ggplot(aes(yrs.since.phd,salary))+
  geom_jitter(aes(colour = rank,shape = discipline))+
  geom_smooth(method = lm)+
  facet_wrap(~sex)+
  labs(title = "salary vs years since phd",
       x="years since phd",
       y="Income",
       color="position",
       shape="research area"
  )
  

Salaries %>% 
  filter(salary < 150000) %>% 
  ggplot(aes(x=rank,y = salary,fill=sex))+
  geom_boxplot(alpha=0.5)+
  scale_x_discrete(breaks=c("AsstProf","AssocProf","Prof"),
                   labels=c("assistant\nproffesor","associative\nprofessor","full\nprofessor"))+
  scale_y_continuous(breaks = c(50000,100000,150000,200000),
                     labels=c("$50k","$100k","$150k","$200k"))+
  labs(title = "faculty salary by rank and gender",
       x="",
       y="",
       fill="Gender",
       )+
  theme(legend.position = c(.11,.78))
