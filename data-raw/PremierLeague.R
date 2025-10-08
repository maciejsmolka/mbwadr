library(readr)
library(usethis)

read_pl_data <- function(file) {
  pl_data <- read_csv(file, show_col_types = FALSE)
  pl_data$HomeTeam <- factor(pl_data$HomeTeam)
  pl_data$AwayTeam <- factor(pl_data$AwayTeam, levels = levels(pl_data$HomeTeam))

  # We compute the goal difference in every game.
  pl_data <-
    pl_data %>%
    mutate(GDiff = FTHG - FTAG)

  pl_data
}

PremierLeague2006 <- read_pl_data("data-raw/premier-league-2006-07.csv")
PremierLeague2021 <- read_pl_data("data-raw/premier-league-2021-2022.csv")

use_data(PremierLeague2006, overwrite = TRUE)
use_data(PremierLeague2021, overwrite = TRUE)
