#' Standard function operator.
#'
#' @param f A function to be negated.
#' @details
#'
#' Negate any function.
#'
#' @examples
#' library(functionalPlayground)
#'
#' always_true <- function(...) {
#'   return(TRUE)
#' }
#' always_false <- negate(always_true)
#' always_false(TRUE)
#' always_false(FALSE)
#' @export
negate <- function(f) {
  return(function(...) !f(...))
}

#' Standard function operator.
#'
#' @param f A function that returns TRUE or FALSE.
#' @param x A vector to be filtered.
#' @details
#'
#' Filter any function.
#'
#' @examples
#' library(functionalPlayground)
#'
#' always_true <- function(...) {
#'   return(TRUE)
#' }
#' always_false <- negate(always_true)
#' recursive_filter(always_true, 1:10)
#' recursive_filter(always_false, 1:10)
#' @export
recursive_filter <- function(f, x) {
  if (length(x) == 0) {
    return(vector(mode = mode(x)))
  } else if (f(x[1])) {
    return(c(x[1], recursive_filter(f, x[-1])))
  } else {
    return(recursive_filter(f, x[-1]))
  }
}
