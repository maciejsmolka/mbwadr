fish <- read.csv("data-raw/fish.csv",
                 colClasses = c("factor", "factor", "factor", NA, NA, NA, NA, NA)
                 )

usethis::use_data(fish, overwrite = TRUE)
