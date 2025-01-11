my_data <- msleep %>%
  select(name,order,conservation,bodywt,sleep_total) %>%
  #filter(between(sleep_total,16,20)) %>%
  #filter(near(sleep_total,17,tol=0.5))
  filter(!is.na(conservation))


