#my_data <- read.csv('hollywood_movies.csv')
#head(my_data)
#tail(my_data)
#View(my_data)

#my_data[1,3]Movie.name,Rating
#my_data[ ,3]
#my_data$Rating
#
#chooseCRANmirror()
library(tidyverse)
#library(ggplot2)
#library(colorspace)
my_data %>%
  select(Movie.Name,Rating) %>%
  filter(Rating < 8.0) %>%
  arrange(Rating)
  

