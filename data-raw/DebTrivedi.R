library(dplyr)

DebTrivedi <- read.table("data-raw/NMES_OLD.DT")
names(DebTrivedi) <- c(
  "ofp",
  "ofnp",
  "opp",
  "opnp",
  "emr",
  "hosp",
  "exclhlth",
  "poorhlth",
  "numchron",
  "adldiff",
  "noreast",
  "midwest",
  "west",
  "age",
  "black",
  "male",
  "married",
  "school",
  "faminc",
  "employed",
  "privins",
  "medicaid"
)

DebTrivedi <-
  DebTrivedi |>
  mutate(
    health = factor(
      case_when(
        exclhlth == 1 ~ "exclusive",
        poorhlth == 1 ~ "poor",
        .default = "average"
        )
      ),
    exclhlth = NULL,
    poorhlth = NULL,
    .before = numchron
  ) |>
  mutate(
    adldiff = factor(if_else(adldiff == 1, "Yes", "No")),
    region = factor(
      case_when(
        noreast == 1 ~ "noreast",
        midwest == 1 ~ "midwest",
        west == 1 ~ "west",
        .default = "south"
      )
    ),
    noreast = NULL,
    midwest = NULL,
    west = NULL,
    .before = age,
  ) |>
  mutate(
    black = factor(if_else(black == 1, "Yes", "No")),
    male = factor(if_else(male == 1, "Yes", "No")),
    married = factor(if_else(married == 1, "Yes", "No")),
    .after = age
  ) |>
  mutate(
    employed = factor(if_else(employed == 1, "Yes", "No")),
    privins = factor(if_else(privins == 1, "Yes", "No")),
    medicaid = factor(if_else(medicaid == 1, "Yes", "No"))
  )

usethis::use_data(DebTrivedi, overwrite = TRUE)
