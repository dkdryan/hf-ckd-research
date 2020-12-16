## open log connection to file
sink(here::here("log"))

## import libraries
library('dplyr')
library('tidyr')
library('readr')
library('here')
library('ggplot2')

## import data
df_input <- read_csv(here::here("output", "input.csv"))

# select bmi 
age <- select(df_input, age)

#ggplot histogram
age_hist <- ggplot(age, aes(x=age)) + geom_histogram(binwidth=.5)
ggsave(age_hist, file = "age_hist.png", path=here::here("output"))


