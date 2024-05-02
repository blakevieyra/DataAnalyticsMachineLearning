data("ToothGrowth")
View(ToothGrowth)

install.packages('dplyr')
library(dplyr)
install.packages("tidyverse")
data("diamonds")

penguins %>%
  drop_na(sex) %>%
  ggplot(aes(x=flipper_length_mm,y=body_mass_g)) +
  geom_point(aes(color=species),
             shape=species) +
  facet_wrap(~sex)

library(tidyverse)
library(palmerpenguins)
glimpse(penguins)

ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g))+
  geom_point(color="purple")

ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g))+
  geom_point(aes(shape=species))

ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g))+
  geom_point(aes(color=species,
                 shape=species)) +
  facet_wrap(~sex)

penguins %>%
  drop_na(sex) %>%
  ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g))+
  geom_point(aes(color=species,
                 shape=species)) +
  facet_wrap(~sex)

mindate <- min(hotel_bookings$arrival_date_year)
maxdate <- max(hotel_bookings$arrival_date_year)

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel) +
  labs(title="Comparison of market segments by hotel type for hotel bookings",
       caption=paste0("Data from: ", mindate, " to ", maxdate))

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel) +
  labs(title="Comparison of market segments by hotel type for hotel bookings",
       caption=paste0("Data from: ", mindate, " to ", maxdate),
       x="Market Segment",
       y="Number of Bookings")
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel) +
  labs(title="Comparison of market segments by hotel type for hotel bookings",
       caption=paste0("Data from: ", mindate, " to ", maxdate))

ggsave('hotel_booking_chart.png',
       width=16,
       height=8)


install.packages('tidyverse')
library(tidyverse)


onlineta_city_hotels <- filter(hotel_bookings, 
                               (hotel=="City Hotel" & 
                                  hotel_bookings$market_segment=="Online TA"))


View(onlineta_city_hotels)


onlineta_city_hotels_v2 <- hotel_bookings %>%
  filter(hotel=="City Hotel") %>%
  filter(market_segment=="Online TA")


ggplot(data = hotel_bookings) +
geom_bar(mapping = aes(x = market_segment)) +
facet_wrap(~hotel) +
labs(title="Comparison of market segments by hotel type for hotel bookings",
caption=paste0("Data from: ", mindate, " to ", maxdate),
x="Market Segment",
y="Number of Bookings")
