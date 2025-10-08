TherapeuticTouch <- read.csv("data-raw/TherapeuticTouchData.csv",
                             colClasses = c(NA, "factor"))

usethis::use_data(TherapeuticTouch, overwrite = TRUE)
