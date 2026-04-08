library(ucimlrepo)

wine_quality_uci <- fetch_ucirepo("Wine Quality")
WineQuality <- wine_quality_uci$data$original
WineQuality$color <- as.factor(WineQuality$color)
WineQuality$quality <- factor(WineQuality$quality, ordered = TRUE)

WineQualityScaled <- WineQuality
WineQualityScaled[1:11] <- scale(WineQualityScaled[1:11])

usethis::use_data(WineQuality, overwrite = TRUE)
usethis::use_data(WineQualityScaled, overwrite = TRUE)
