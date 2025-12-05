library(dplyr)

read_htwt_data <- function(file) {
  htwt_data <- read.csv(file)
  htwt_data |>
    mutate(
      male = factor(if_else(male == 1, "Yes", "No"))
    )
}

HtWtData30 <- read_htwt_data("data-raw/HtWtData30.csv")
HtWtData300 <- read_htwt_data("data-raw/HtWtData300.csv")

usethis::use_data(HtWtData30, overwrite = TRUE)
usethis::use_data(HtWtData300, overwrite = TRUE)
