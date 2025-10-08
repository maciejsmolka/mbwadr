library(readr)
library(dplyr)
library(stringr)
library(usethis)

NBAPlayers <- read_csv("data-raw/nba-players-2022-3.csv",
                       col_types = "icciciiiiidiidiiddiidiiiiiiiiic")

# Some players have two positions: we remove the second one. Then we convert
# the Pos column to factor.

NBAPlayers <-
  NBAPlayers %>%
  mutate(Pos = as.factor(str_match(Pos, "^\\w+")))

# Some players changed the team. We retain only summary results for them
# (Tm = "TOT").

transfered <-
  NBAPlayers %>%
  select(Rk, Tm) %>%
  group_by(Rk) %>%
  summarise(NClubs = n()) %>%
  filter(NClubs > 1)

NBAPlayers <-
  NBAPlayers %>%
  filter(!(Rk %in% transfered$Rk) | Tm == "TOT")


use_data(NBAPlayers, overwrite = TRUE)
