library(tidyverse)
nurses <- read_csv("https://raw.githubusercontent.com/36-SURE/36-SURE.github.io/main/data/nurses.csv") 

## How has New york, Texas, Indiana, and California's hourly wage average along with the total employment of RN's differ between 2015 to 2020?

view(nurses)

library(ggplot2) 
library(janitor)

janitor::clean_names() |> 
  filter(year >=2015, state %in% c("New York", "Texas", "Indiana", "California") )
# Janitor:: clean_name creates snake names so I won't have to use quotation marks. 
collected_Wages |>
  ggplot(aes(x = total_employed_rn, y = hourly_wage_avg, color = state)) +
  geom_point(size = 3, alpha = 0.6 ) +
  labs(x = "total emplyoment of registered nurses",
       y = "hourly wage average" ,
       title = "Comparison of Average Hourly Wages and Total Employment of RNs in New York, Texas, Indiana, and California (2015-2020) ")+ 
  theme_gray()
