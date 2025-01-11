require(gapminder)
View(gapminder)
data <- select(gapminder,country,year,lifeExp)


wide_data <- data %>% 
  pivot_wider(names_from = year,values_from = lifeExp)
long_data <- wide_data %>% 
  pivot_longer(2:13,names_to="year",values_to ="lifeExp")
