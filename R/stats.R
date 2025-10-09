#' Compute the HDI for a distribution
#'
#' @param d A distribution from `distributions3` package.
#' @param credMass A scalar from `[0,1]` specifying the mass within the credible
#' interval. Defaults to 0.95.
#' @param ... Other arguments passed to [HDInterval::hdi()].
#'
#' @seealso [HDInterval::hdi()]
#'
#' @exportS3Method HDInterval::hdi
hdi.distribution <- function(d, credMass = 0.95, ...) {
  HDInterval::hdi(
    function(q) stats::quantile(d, q),
    credMass = credMass,
    ...
  )
}
