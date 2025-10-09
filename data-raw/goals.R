goals <- scan("data-raw/goals.dat")
goals2 <- scan("data-raw/goals2.dat")

usethis::use_data(goals, overwrite = TRUE)
usethis::use_data(goals2, overwrite = TRUE)
