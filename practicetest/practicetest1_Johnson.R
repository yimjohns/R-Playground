library(tidyverse)
library(dplyr)
library(nycflights13)

View(mpg)
?mpg

# =========================================================
# QUESTION 1
# =========================================================
ggplot(data = mpg, mapping = aes(x = displ, y = cty)) +
  geom_point()

# =========================================================
# QUESTION 3
# =========================================================
ggplot(data = mpg, mapping = aes(x = displ, y = cty)) +
  geom_point(color = "green")

# =========================================================
# QUESTION 5
# =========================================================
ggplot(data = mpg, mapping = aes(x = displ, y = cty)) +
  geom_smooth()

# =========================================================
# QUESTION 7
# =========================================================
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = cty, color = drv)) +
  geom_smooth(method = lm, mapping = aes(x = displ, y = cty, color = drv))

# =========================================================
# QUESTION 1 dplyr
# =========================================================
mpg %>%
  filter(manufacturer == "dodge", model == "durango 4wd")

# =========================================================
# QUESTION 2 dplyr
# =========================================================
mpg %>%
  filter(cty < 10, hwy < 16)

# =========================================================
# QUESTION 3 dplyr
# =========================================================
mpg %>%
  arrange(desc(displ))

# =========================================================
# QUESTION 4 dplyr
# =========================================================
mpg %>%
  arrange(cty) %>%
  print(n = 30)

# ------ Based on the output of the arrange function,
# ------ the dodge dakota pickup 4wd has the lowest city 
# ------ miles per gallon


# =========================================================
# QUESTION 6 dplyr
# =========================================================
mpg %>%
  select(manufacturer, model, cty, hwy) %>%
  filter(manufacturer == "ford", model == "mustang") %>%
  mutate(difference = hwy - cty) 

