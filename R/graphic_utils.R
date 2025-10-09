#' Adds central value indicators to the current plot
#'
#' @param value Numeric. The central value.
#' @param y Numeric. `y` coordinate of the text.
#' @param type Character. Type of central value: "mean" or "mode".
#' @param digits Integer. Number of significant digits to show. Defaults to 3.
#' @param col The color to be used. Defaults to "blue".
#'
#' @export
show_central <- function(value, y, type = "mean", digits = 3, col = "blue") {
  stopifnot(type %in% c("mean", "mode"))
  stopifnot(is.numeric(value))

  if (!is.finite(value)) {
    caption <- paste("No", type)
    xlims <- graphics::par("usr")
    x <- (xlims[1] + xlims[2]) / 2
    graphics::text(x, y, caption, col = col)
    return(invisible())
  }

  val_rounded <- signif(value, digits)
  caption <- ""
  switch (type,
          mean = {
            caption <- bquote(mu == .(val_rounded))
            lty <- "solid"
          },
          mode = {
            caption <- bquote(omega == .(val_rounded))
            lty <- "dashed"
          }
  )

  graphics::abline(v = value, lty = lty)
  graphics::text(value, y, caption, col = col)
}

#' Adds HDI to the current plot
#'
#' @param hdi Numeric of length 2. The Highest Density Interval.
#' @param y Numeric. `y` coordinate of the line.
#' @param digits Integer. Number of significant digits to show. Defaults to 3.
#' @param pos A position specifier for the text (see [graphics::text()]). Defaults to 3.
#' @param col The color to be used. Defaults to "red".
#'
#' @export
show_hdi <- function(hdi, y = 0, digits = 3, pos = 3, col = "red") {
  graphics::lines(hdi, rep(y, 2), col = col)
  graphics::text(hdi, rep(y, 2), round(hdi, digits), pos = pos, col = col)
}

#' Adds a point estimator (e.g. MLE) to the current plot
#'
#' @param mle Numeric scalar. The point estimator.
#' @param y Numeric. `y` coordinate of the text.
#' @param digits Integer. Number of significant digits to show. Defaults to 3.
#' @param pos A position specifier for the text (see [graphics::text()]). Defaults to 3.
#' @param col The color to be used. Defaults to "orange".
#'
#' @export
show_mle <- function(mle, y = 0, digits = 3, pos = 3, col = "orange") {
  graphics::abline(v = mle, col = col)
  graphics::text(mle, y, paste("MLE = ", round(mle, digits)), pos = pos, col = col)
}
