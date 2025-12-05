library(ucimlrepo)

abalone_uci <- fetch_ucirepo("Abalone")
Abalone <- abalone_uci$data$original
Abalone$Sex <- as.factor(Abalone$Sex)

usethis::use_data(Abalone, overwrite = TRUE)
