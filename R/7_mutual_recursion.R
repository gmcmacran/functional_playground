#' @keywords internal
is_even_base <- function(x) {
  if (length(x) != 1) {
    stop()
  }

  if (x == 0) {
    return(TRUE)
  } else {
    return(is_odd_base(x - 1L))
  }
}

#' @keywords internal
is_odd_base <- function(x) {
  if (length(x) != 1) {
    stop()
  }

  if (x == 0) {
    return(FALSE)
  } else {
    return(is_even_base(x - 1L))
  }
}

#' Mutual recursion
#'
#' @param x A numeric vector.
#' @details
#'
#' Functions leveraging mutual recursion.
#'
#' @examples
#' library(functionalPlayground)
#'
#' x <- 1:10
#' is_even(x)
#' is_odd(x)
#' @export
is_even <- function(x) {
  return(map(x, is_even_base))
}

#' @rdname is_even
#' @export
is_odd <- function(x) {
  return(map(x, is_odd_base))
}

#' Mutual recursion
#'
#' @param n A numeric vector containing one integer.
#' @details
#'
#' Functions leveraging mutual recursion.
#'
#' @examples
#' library(functionalPlayground)
#'
#' n <- 3
#' hofstadter_female(n)
#' hofstadter_male(n)
#' @export
hofstadter_female <- function(n) {
  if (n == 0) {
    return(1)
  } else {
    return(n - hofstadter_male(hofstadter_female(n - 1)))
  }
}

#' @rdname hofstadter_female
#' @export
hofstadter_male <- function(n) {
  if (n == 0) {
    return(0)
  } else {
    return(n - hofstadter_female(hofstadter_male(n - 1)))
  }
}
