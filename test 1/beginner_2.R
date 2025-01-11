library(gapminder)
View(gapminder)
t_test_plot
gapminder %>% 
  filter(continent %in% c("Africa","Europe")) %>% 
  t.test(lifeExp ~ continent,data=.,
         alternative = "two.sided")


gapminder %>% 
  filter(year==2007) %>% 
  filter(continent %in% c("Americas","Europe","Asia")) %>% 
  aov(lifeExp ~ continent,data=.) %>% 
  TukeyHSD() %>% 
  plot()



chi_plot
head(iris)


flowers <- iris %>% 
  mutate(size=cut(Sepal.Length,breaks = 3,
                  labels = c("small","medium","large"))) %>% 
  select(Species,size)


flowers %>% 
  select(size) %>% 
  table() %>% 
  chisq.test()

flowers %>% 
  table() %>% 
  chisq.test()


head(cars,10)
plot(cars$speed)
cars %>% 
  lm(dist ~ speed,data=.) %>% 
  summary()

