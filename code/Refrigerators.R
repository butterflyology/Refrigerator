### Code for refridgerator research

library('dplyr')
library('readr')
library('ggplot2')
library('plotly')

data <- read_csv("data/Refrigerators.csv", col_names = TRUE, col_types = list(Brand = col_character(), Model = col_character(), Score = col_integer(), Price = col_integer(), Type = col_character()))

head(data)

plot1 <- ggplot(data, aes(x = Score, y = Price, color = Brand)) +
  geom_point(aes(shape = Type), size = 4) +
  theme_bw() + 
  coord_cartesian(xlim = c(50, 100), ylim = c(0, 10000)) +
  ylab("Price (USD)")
  
plot1_plotly <- ggplotly(plot1)
plot1_plotly_str <- plotly_build(plot1_plotly) 
plot1_plotly_str
