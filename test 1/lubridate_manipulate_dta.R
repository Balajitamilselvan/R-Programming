library(lubridate)
library(tidyverse)
now()
ymd("2024-10-01")
mdy("march 30,2024")
ydm("2024-12-11")

library(nycflights13)
View(flights)
flights %>% 
  select(origin,year,month,day,hour,minute) %>% 
  head(4)
flights %>% 
  mutate(flight_date=ymd_hm(paste(year,month,day,hour,minute))) %>% 
  select(origin,dest,flight_date) %>% 
  head(4)

flights %>% 
  mutate(flight_date=make_datetime(year,month,day,hour,minute)) %>% 
  select(origin,dest,flight_date) %>% 
  head(4)

flights %>% 
  mutate(flight_date=make_date(year,month,day)) %>% 
  mutate(weekday=wday(flight_date,label=T),
         month_name=month(flight_date,label=T)) %>% 
  select(origin,flight_date,weekday,month_name) %>% 
  head(4)
now()+years(30)
flights %>% 
  filter( ymd("2013-09-01") > time_hour >= ymd("2013-10-01"))  %>% 
  select(origin,month) %>% 
  head(4)


my_duration <- dseconds(15)
print(my_duration)
dminutes(1)
dminutes(5)
ymd("2016-01-01")+dyears(1)
ymd("2016-01-01")+years(1)
start <- ymd_hms("2023-01-01 12:00:00")
end <- ymd_hms("2023-01-15 12:00:00")
iv <- interval(start,end)
print(iv)

ymd_hms("2023-01-10 12:00:00") %within% iv
start2< - ymd_hms("2023-01-01 12:00:00")
end2 <- ymd_hms("2023-01-11 12:00:00")
iv2 <- interval(start2,end2)
iv < iv2
as.duration(iv)
flights %>% 
  filter(carrier %in% c("9E","US","AA","MQ")) %>% 
  mutate(week_day=wday(time_hour,label=T)) %>% 
  ggplot(aes(week_day))+
  geom_bar(fill="steelblue",alpha=0.8)+
  facet_wrap(~carrier)+
  theme_bw()+
  labs(title = "number of flights by carrier and weekday",
       x="week day",
       y="")+
  theme(plot.title = element_text(hjust = 0.5))


flights %>% 
  filter(time_hour < ymd("2013-10-01"),carrier %in% c("9E","US","AA","MQ")) %>% 
  ggplot(aes(time_hour,color=carrier))+
  geom_freqpoly(linewidth=1.5)+
  theme_bw()+
  labs(title = "number of flights by carrier and weekday",
       x="week day",
       y="")+
  theme(plot.title = element_text(hjust = 0.5))

