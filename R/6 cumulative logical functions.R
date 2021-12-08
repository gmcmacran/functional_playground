#' Standard functions implemented in a functional style
#'
#' @param x A logical vector.
#' @details
#'
#' Functions leverage map and a function operator.
#'
#' @examples
#' library(functionalPlayground)
#'
#' x <- c(TRUE, TRUE, FALSE, FALSE)
#' cumulative_all(x)
#' cumulative_any(x)
#' @export
cumulative_all <- cumulative_f(recursive_all)

#' @rdname cumulative_all
#' @export
cumulative_any <- cumulative_f(recursive_any)

