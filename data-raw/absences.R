absences <- data.frame(
  n_absences = 0:7,
  n_students = c(12, 20, 27, 18, 7, 3, 2, 1)
  )

usethis::use_data(absences, overwrite = TRUE)
