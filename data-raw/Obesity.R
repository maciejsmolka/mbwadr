library(ucimlrepo)

obesity_uci <- fetch_ucirepo(id = 544)
Obesity <- obesity_uci$data$original
Obesity$Gender <- factor(Obesity$Gender)
Obesity$family_history_with_overweight <- factor(Obesity$family_history_with_overweight)
Obesity$FAVC <- factor(Obesity$FAVC)
Obesity$CAEC <- factor(Obesity$CAEC)
Obesity$SMOKE <- factor(Obesity$SMOKE)
Obesity$SCC <- factor(Obesity$SCC)
Obesity$CALC <- factor(Obesity$CALC)
Obesity$MTRANS <- factor(Obesity$MTRANS)
Obesity$NObeyesdad <- factor(
  Obesity$NObeyesdad,
  levels = c("Insufficient_Weight", "Normal_Weight", "Overweight_Level_I", "Overweight_Level_II",
             "Obesity_Type_I", "Obesity_Type_II", "Obesity_Type_III"),
  ordered = TRUE
)

usethis::use_data(Obesity, overwrite = TRUE)
