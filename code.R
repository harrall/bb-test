library(tidyverse)
library(ggthemes)

bb <- bb_19_13

# Alt 1
p <- bb %>%
  mutate(region = reorder(region, hundrea, FUN = median)) %>%
  ggplot() +
  theme_economist() +
  #  theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
  xlab("") + 
  scale_y_continuous(labels = scales::percent) + 
  geom_boxplot(aes(region, hundrea, fill = factor(year))) + 
  labs(title = "100/10 Mbit/s dekning per region over tid")
p