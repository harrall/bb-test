# test code

library(tidyverse)
library(ggthemes)

# bb_19_13 <- read.csv("data/murders.csv")
bb <- bb_19_13
save(bb, file = "rda/bb.rda")

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