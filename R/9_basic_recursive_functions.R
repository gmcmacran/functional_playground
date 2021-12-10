#' Standard functions implemented by recursion
#'
#' @param x A vector.
#' @details
#'
#' Functions leveraging recursion.
#'
#' @examples
#' library(functionalPlayground)
#'
#' x <- 1:10
#' recursive_reverse(x)
#' @export
recursive_reverse <- function(x) {
  if (length(x) == 0) {
    return(x)
  } else {
    last <- length(x)
    return(c(x[last], recursive_reverse(x[-last])))
  }
}

#' Standard functions implemented by recursion
#'
#' @param m A positive integer.
#' @param n A positive integer.
#' @details
#'
#' Functions leveraging recursion.
#'
#' This function will only finish in a reasonable amount of time
#' for m and n less than or equal to 4.
#'
#' @examples
#' library(functionalPlayground)
#'
#' ackermann(2, 1)
#' ackermann(1, 2)
#' @export
ackermann <- function(m, n) {
  if (m == 0) {
    return(n + 1)
  } else if (n == 0) {
    return(ackermann(m - 1, 1))
  } else {
    return(ackermann(m - 1, ackermann(m, n - 1)))
  }
}

#' Standard functions implemented by recursion
#'
#' @param x A vector that is not empty.
#' @details
#'
#' Functions leveraging recursion.
#'
#' @examples
#' library(functionalPlayground)
#'
#' recursive_length(1:10)
#' recursive_length(1)
#' @export
recursive_length <- function(x) {
  if (is.na(x[-1][1])) {
    return(1)
  } else {
    return(1 + recursive_length(x[-1]))
  }
}
