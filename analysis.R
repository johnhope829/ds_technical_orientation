library(tidyverse)
library(ggplot2)

df <- read_csv("data/MSDS-Orientation-Computer-Survey.csv")

# plot
df %>%
  filter(RAM < 64, format(as.Date(df$Timestamp, format = "%m/%d/%Y"), "%Y") == "0024") %>%
  ggplot(aes(x=RAM, fill = os)) +
  geom_histogram(binwidth=4, fill="#69b3a2", color="#e9ecef", alpha=0.9) +
  ggtitle("2024 Cohort Count of Computers by RAM (in GB)") +
  labs(x = 'RAM (in GB)', y = 'Count')
