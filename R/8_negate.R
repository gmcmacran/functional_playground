#' Standard function operator
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
