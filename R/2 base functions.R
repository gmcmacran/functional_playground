#' @title Simple helper functions.
#' @param x1 A vector of length 1. Numeric or logical depending on function.
#' @param x2 A vector of length 1. Numeric or logical depending on function.
#' @keywords internal
add <- function(x1, x2) {
  return(x1 + x2)
}

#' @keywords internal
multiply <- function(x1, x2) {
  return(x1 * x2)
}

#' @keywords internal
max_scaler <- function(x1, x2) {
  if (x1 >= x2)
    out <- x1
  else
    out <- x2

  return(out)
}

#' @keywords internal
min_scaler <- function(x1, x2) {
  if (x1 <= x2)
    out <- x1
  else
    out <- x2

  return(out)
}

#' @keywords internal
and <- function(x1, x2) {
  return(x1 && x2)
}

#' @keywords internal
or <- function(x1, x2) {
  return(x1 || x2)
}
