two_coins <- utils::read.csv("data-raw/two_coins.csv",
                             colClasses = c("integer", "factor"))

usethis::use_data(two_coins, overwrite = TRUE)
