read_htwt_data <- function(file) {
  read.csv(file, colClasses = c("factor", NA, NA))
}

HtWtData30 <- read.csv("data-raw/HtWtData30.csv",
                       colClasses = c("factor", NA, NA)
                       )
HtWtData300 <- read.csv("data-raw/HtWtData300.csv",
                        colClasses = c("factor", NA, NA)
                        )

usethis::use_data(HtWtData30, overwrite = TRUE)
usethis::use_data(HtWtData300, overwrite = TRUE)
