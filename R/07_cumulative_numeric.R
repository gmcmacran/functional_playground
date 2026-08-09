#' Cumulative functions implemented in a functional style
#'
#' @param x A numeric vector.
#' @details
#'
#' Functions leveraging map and a function operator.
#'
#' @examples
#' library(functionalPlayground)
#'
#' x <- 1:10
#' cumulative_add(x)
#' cumulative_multiply(x)
#' cumulative_max(x)
#' cumulative_min(x)
#' @export
cumulative_add <- cumulative_f(recursive_add)

#' @rdname cumulative_add
#' @export
cumulative_multiply <- cumulative_f(recursive_multiply)

#' @rdname cumulative_add
#' @export
cumulative_max <- cumulative_f(recursive_max)

#' @rdname cumulative_add
#' @export
cumulative_min <- cumulative_f(recursive_min)
