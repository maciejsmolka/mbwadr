#' Abalone measurements
#'
#' Predict the age of abalone from physical measurements.
#'
#' The age of abalone is determined by cutting the shell through the cone,
#' staining it, and counting the number of rings through a microscope -
#' a boring and time-consuming task.  Other measurements, which are easier to
#' obtain, are used to predict the age.  Further information, such as weather
#' patterns and location (hence food availability) may be required to solve the
#' problem. From the original data examples with missing values were removed
#' (the majority having the predicted value missing), and the ranges of the
#' continuous values have been scaled for use with an ANN (by dividing by 200).
#'
#' @format A `data.frame` with 4177 rows and 9 columns:
#' \describe{
#'  \item{`Sex`}{A factor with 3 levels: "M" (male), "F" (female) and "I" (infant).}
#'  \item{`Length`}{Longest shell measurement (mm).}
#'  \item{`Diameter`}{Perpendicular to length (mm).}
#'  \item{`Height`}{With meat in shell (mm).}
#'  \item{`Whole_weight`}{Whole abalone (g).}
#'  \item{`Shucked_weight`}{Weight of meat (g).}
#'  \item{`Viscera_weight`}{Gut weight (after bleeding, g).}
#'  \item{`Shell_weight`}{After being dried (g).}
#'  \item{`Rings`}{Number of rings. +1.5 gives the age in years.}
#' }
#'
#' @source
#' Available in UC Irvine Machine Learning Repository as
#' [dataset with ID 1](https://archive.ics.uci.edu/dataset/1/)
#'
"Abalone"

#' Student absences
#'
#' Absences of students in a semester.
#'
#' @format
#' A `data.frame` with 8 rows and 2 columns:
#' \describe{
#'  \item{`n_absences`}{Number of absences.}
#'  \item{`n_students`}{Number of students with a given absence level.}
#' }
#'
"absences"

#' Medical care demand by the elderly
#'
#' The dataset consists of a subsample of elderly individuals
#' (66 and older) drawn from the National Medical Expenditure Survey (1987).
#' Dummy variable columns from the original dataset have been converted
#' to appropriate factors.
#'
#' @format
#' A `data.frame` with 4406 rows and 19 columns:
#' \describe{
#'  \item{`ofp`}{Number of physician office visits.}
#'  \item{`ofnp`}{Number of non-physician office visits.}
#'  \item{`opp`}{Number of physician hospital outpatient visits.}
#'  \item{`opnp`}{Number of non-physician hospital outpatient visits.}
#'  \item{`emr`}{Number of emergency room visits.}
#'  \item{`hosp`}{Number of hospital stays.}
#'  \item{`health`}{Self-perceived health status. A factor with 3 levels: "poor",
#'  "average" and "excellent".}
#'  \item{`numchron`}{Number of chronic conditions (cancer, heart attack, gall bladder problems,
#'  emphysema, arthritis, diabetes, other heart disease).}
#'  \item{`adldiff`}{Does the person have a condition that limits activities of daily living?
#'  A factor with 2 levels "Yes" and "No".}
#'  \item{`region`}{Region of residence. A factor with 4 levels: "noreast", "midwest", "south" and "west".}
#'  \item{`age`}{Age in years (divided by 10).}
#'  \item{`black`}{Is the person black? A factor with 2 levels "Yes" and "No".}
#'  \item{`male`}{Is the person male? A factor with 2 levels "Yes" and "No".}
#'  \item{`married`}{Is the person married? A factor with 2 levels "Yes" and "No".}
#'  \item{`school`}{Number of years of education.}
#'  \item{`faminc`}{Family income in $10,000.}
#'  \item{`employed`}{Is the person employed? A factor with 2 levels "Yes" and "No".}
#'  \item{`privins`}{Is the person covered by private health insurance?
#'  A factor with 2 levels "Yes" and "No".}
#'  \item{`medicaid`}{Is the person covered by Medicaid? A factor with 2 levels "Yes" and "No".}
#' }
#'
#' @source Partha Deb and Pravin K. Trivedi,
#' _Demand for Medical Care by the Elderly: A Finite Mixture Approach_,
#' Journal of Applied Econometrics, Vol. 12, No. 3, 1997, pp. 313-336.
#' <http://qed.econ.queensu.ca/jae/1997-v12.3/deb-trivedi/>
#'
"DebTrivedi"

#' Fishing at a state park
#'
#' This dataset records how many fish are being caught
#' by fishermen at a state park. Visitors were asked how long they had stayed,
#' how many people had been in the group, had there been children in the group
#' and how many fish had been caught. Some visitors did not fish, but there is
#' no data on whether a person fished or not. Some visitors who did fish did
#' not catch any fish so there are excess zeros in the data because of the
#' people that did not fish.
#'
#' @format A `data.frame` with 250 rows and 8 columns:
#' \describe{
#'  \item{`nofish`}{? A factor with 2 levels: 0 and 1.}
#'  \item{`livebait`}{Did the group use a live bait?
#'  A factor with 2 levels: 0 and 1.}
#'  \item{`camper`}{Did the group bring a camper to the park?
#'  A factor with 2 levels: 0 and 1.}
#'  \item{`persons`}{How many people were in the group?}
#'  \item{`child`}{How many children were in the group?}
#'  \item{`xb`}{?}
#'  \item{`zg`}{?}
#'  \item{`count`}{Number of fish caught.}
#' }
#'
#' @source University of California, Los Angeles data repository
#' <https://stats.idre.ucla.edu/stat/data/fish.csv>
#'
"fish"

#' Goals from 64 games
#'
#' Goals won by a football team in 64 subsequent games (simulated data).
#'
#' @format A numeric vector of length 64.
#'
"goals"

#' Goals from 200 games
#'
#' Goals won by a football team in 200 subsequent games (simulated data).
#'
#' @format A numeric vector of length 200.
#'
"goals2"

#' Height/weight data
#'
#' Sex, height and weight data from 30 people.
#'
#' @format A `data.frame` with 30 rows and 3 columns:
#' \describe{
#'  \item{`male`}{Is the person male? A factor with 2 levels: "Yes" and "No"}
#'  \item{`height`}{The person's height (in inches).}
#'  \item{`weight`}{The person's weight (in pounds).}
#' }
#'
#' @source
#' John K. Kruschke,
#' _Doing Bayesian Data Analysis: A Tutorial with R, JAGS  and Stan (2nd Edition)_,
#' Academic Press, 2014.
#' <https://sites.google.com/site/doingbayesiandataanalysis/software-installation>
#'
"HtWtData30"

#' Height/weight data
#'
#' Sex, height and weight data from 300 people.
#'
#' @format A `data.frame` with 300 rows and 3 columns:
#' \describe{
#'  \item{`male`}{Is the person male? A factor with 2 levels: "Yes" and "No"}
#'  \item{`height`}{The person's height (in inches).}
#'  \item{`weight`}{The person's weight (in pounds).}
#' }
#'
#' @source
#' John K. Kruschke,
#' _Doing Bayesian Data Analysis: A Tutorial with R, JAGS  and Stan (2nd Edition)_,
#' Academic Press, 2014.
#' <https://sites.google.com/site/doingbayesiandataanalysis/software-installation>
#'
"HtWtData300"

#' NBA players 2022/23
#'
#' NBA player per-game statistics from 2022/23 regular season.
#'
#' For players that changed teams during the regular season only total
#' scores are shown (for such players `Tm == TOT`). Some players were fielded
#' at two different positions: then only the first position is shown.
#'
#' @format A tibble (a data frame) with 539 rows and 31 columns.
#'
#' @source
#' <https://www.basketball-reference.com/leagues/NBA_2023_per_game.html>
#'
"NBAPlayers"

#' Obesity levels
#'
#' Estimation of obesity levels based on eating habits and physical condition.
#'
#' This set contains data for the estimation of obesity levels in individuals
#' from the countries of Mexico, Peru and Colombia, based on their eating habits
#' and physical condition.
#' 77% of the data was generated synthetically using the Weka tool and the
#' SMOTE filter, 23% of the data was collected directly from users through a
#' web platform. For discussion and more information of
#' the dataset creation, please refer to the full-length article cited in the
#' Source section (see below).
#' The original UCI ML dataset has been coerced to a regular R data frame by
#' turning categorical and binary variables into appropriate factors.
#'
#' @format A `data.frame` with 2111 rows and 17 columns:
#' \describe{
#'  \item{`Gender`}{Sex. A factor with 2 levels: "Female" and "Male".}
#'  \item{`Age`}{Age in years.}
#'  \item{`Height`}{Height in meters.}
#'  \item{`Weight`}{Weight in kgs.}
#'  \item{`family_history_with_overweight`}{Has a family member suffered or
#'  does he/she suffer from overweight? A factor with 2 levels: "yes" and "no".}
#'  \item{`FAVC`}{Does the person eat high caloric food frequently?
#'   A factor with 2 levels: "yes" and "no".}
#'  \item{`FCVC`}{Does the person usually eat vegetables in your meals?
#'  1 - never, 2 - sometimes, 3 - always.}
#'  \item{`NCP`}{How many main meals does the person have daily?
#'  A positive integer.}
#'  \item{`CAEC`}{Does the person eat any food between meals? A factor with
#'  4 levels: "no", "Sometimes", "Frequently" and "Always".}
#'  \item{`SMOKE`}{Does the person smoke?  A factor with 2 levels: "yes" and "no".}
#'  \item{`CH2O`}{How much water does the person drink daily?
#'  1 - less than a liter, 2 - between 1 and 2 liters, 3 - more than 3 liters.}
#'  \item{`SCC`}{Does the person monitor the calories he/she eats daily?
#'  A factor with 2 levels: "yes" and "no".}
#'  \item{`FAF`}{How often does the person have physical activity?
#'  0 - never, 1 - 1 or 2 days, 2 - 2 or 4 days, 3 - 4 or 5 days.}
#'  \item{`TUE`}{How much time does the person use technological devices such as
#'  cell phone, videogames, television, computer and others?
#'  0 - 0-2 hours, 1 - 3-5 hours, 2 - more than 5 hours.}
#'  \item{`CALC`}{How often does the person drink alcohol? A factor with
#'  4 levels: "no", "Sometimes", "Frequently", "Always".}
#'  \item{`MTRANS`}{Which transportation does the person usually use?
#'  A factor with 5 levels: "Automobile", "Bike", "Motorbike",
#'  "Public_Transportation", "Walking".}
#'  \item{`NObeyesdad`}{Obesity level. An ordered factor with levels:
#'  "Insufficient_Weight" < "Normal_Weight" < "Overweight_Level_I" <
#'  "Overweight_Level_II" < "Obesity_Type_I" < "Obesity_Type_II" <
#'  "Obesity_Type_III"}
#' }
#'
#'
#' @source
#' Fabio Mendoza Palechor and Alexis de la Hoz Manotas,
#' _Dataset for estimation of obesity levels based on eating habits and physical
#' condition in individuals from Colombia, Peru and Mexico_, Data in Brief,
#' Vol. 25, 2019, pp. 104344.
#' [DOI](https://doi.org/10.1016/j.dib.2019.104344)
#'
#' Available in
#' UC Irvine Machine Learning Repository as
#' [dataset with ID 544](https://archive.ics.uci.edu/dataset/544/)
#'
"Obesity"

#' Plate thickness
#'
#' Thicknesses of metal plates coming from a production line, in millimeters
#' (simulated data).
#'
#' @format A numeric vector of length 25.
#'
"plates"

#' Premier League 2006/7
#'
#' English Premier League game statistics from 2006/7 season.
#'
#' @format A tibble with 380 rows and 24 columns.
#'
#' @seealso [tibble::tibble()]
#'
#' @source
#' <https://www.kaggle.com/datasets/saife245/english-premier-league/>
#'
"PremierLeague2006"

#' Premier League 2021/22
#'
#' English Premier League game statistics from 2021/22 season.
#'
#' @format A tibble with 380 rows and 107 columns.
#'
#' @seealso [tibble::tibble()]
#'
#' @source
#' <https://www.kaggle.com/datasets/saife245/english-premier-league/>
#'
"PremierLeague2021"

#' Therapeutic touch study
#'
#' Data from an experiment on the therapeutic touch.
#'
#' @format A `data.frame` with 280 rows and 2 columns:
#' \describe{
#'  \item{`y`}{Result of experiment: 1 for success, 0 for failure.}
#'  \item{`s`}{Person ID (in fact 2 persons were examined twice with different IDs).
#'  A factor with 28 levels.}
#' }
#'
#' @source
#' John K. Kruschke,
#' _Doing Bayesian Data Analysis: A Tutorial with R, JAGS  and Stan (2nd Edition)_,
#' Academic Press, 2014.
#' <https://sites.google.com/site/doingbayesiandataanalysis/software-installation>
#'
"TherapeuticTouch"

#' Two coins
#'
#' Tosses of two coins with different load.
#'
#' @format A `data.frame` with 15 rows and 2 columns:
#' \describe{
#'  \item{`y`}{Toss result: 1 for Heads, 0 for Tails.}
#'  \item{`coin`}{Coin ID. A factor with 2 levels.}
#' }
#'
#' @source
#' John K. Kruschke,
#' _Doing Bayesian Data Analysis: A Tutorial with R, JAGS  and Stan (2nd Edition)_,
#' Academic Press, 2014.
#' <https://sites.google.com/site/doingbayesiandataanalysis/software-installation>
#'
"two_coins"

#' Wine quality
#'
#' This dataset contains measurements of samples of _vinho verde_, a unique
#' wine from the Minho (north-west) region of Portugal.
#' The data were collected from May 2004 to February 2007 using only protected
#' designation of origin samples that were tested at the oﬃcial certification
#' entity (CVRVV).
#'
#' All numerical columns (`fixed_acidity` to `alcohol`) have been standardized
#' to facilitate the use of ordinal regression and other ML models.
#' Nevertheless, their
#' description refers to the original measurements.
#'
#' @format A `data.frame` with 6497 rows and 13 columns:
#' \describe{
#'  \item{`fixed_acidity`}{Amount (g) of tartaric acid in dm^3.}
#'  \item{`volatile_acidity`}{Amount (g) of acetic acid in dm^3.}
#'  \item{`citric_acid`}{g/dm^3.}
#'  \item{`residual_sugar`}{g/dm^3.}
#'  \item{`chlorides`}{Amount (g) of sodium chloride in dm^3.}
#'  \item{`free_sulfur_dioxide`}{mg/dm^3.}
#'  \item{`total_sulfur_dioxide`}{mg/dm^3.}
#'  \item{`density`}{g/cm^3.}
#'  \item{`pH`}{Measure of acidity or alkalinity.}
#'  \item{`sulphates`}{Amount (g) of potassium sulphate in dm^3.}
#'  \item{`alcohol`}{Volume percentage.}
#'  \item{`quality`}{Sensory score between 0 and 10 (actually between 3 and 9) -
#'  median of at least 3 blind evaluations. An ordered factor.}
#'  \item{`color`}{A factor with 2 levels: "red" and "white".}
#' }
#'
#' @source
#' P. Cortez, Antonio Luiz Cerdeira, Fernando Almeida, Telmo Matos and Jose Reis,
#' _Modeling wine preferences by data mining from physicochemical properties_,
#' Decision Support Systems, Vol. 47, 2009, pp. 547-553.
#' [DOI](https://doi.org/10.1016/j.dss.2009.05.016)
#'
#' Available in UC Irvine Machine Learning Repository as
#' [dataset with ID 186](https://archive.ics.uci.edu/dataset/186/)
#'
"WineQuality"
