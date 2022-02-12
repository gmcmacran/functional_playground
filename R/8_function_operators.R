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
#' @param n The nth element desired. 1 means first.
#' @details
#'
#' Filter any function.
#'
#' @examples
#' library(functionalPlayground)
#'
#' recursive_filter(is_even, 1:10)
#' recursive_filter(is_odd, 1:10)
#'
#' first(is_even, 1:10)
#' first(is_odd, 1:10)
#'
#' last(is_even, 1:10)
#' last(is_odd, 1:10)
#'
#' nth(is_even, 1:10, 1) # same as first(is_even, 1:10)
#' nth(is_even, 1:10, 2) # second even element
#' nth(is_odd, 1:10, 3) # third odd element
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

#' @rdname recursive_filter
#' @export
first <- function(f, x) {
  x <- recursive_filter(f, x)
  if (length(x) >= 1) {
    x <- x[1]
  }
  return(x)
}

#' @rdname recursive_filter
#' @export
last <- function(f, x) {
  x <- recursive_reverse(x)
  x <- first(f, x)
  return(x)
}

#' @rdname recursive_filter
#' @export
nth <- function(f, x, n) {
  x <- recursive_filter(f, x)
  if (n == 1 & length(x) > 0) {
    return(x[1])
  }
  else if (n == 1 & length(x) == 0) {
    return(x)
  }
  else {
    x <- x[-1]
    return(nth(f, x, n - 1))
  }
}

#' Standard function operator.
#'
#' @param f A function.
#' @param g A function.
#' @details
#'
#' Mathematical operation compose. (fog)(x) = f(g(x))
#'
#' @examples
#' library(functionalPlayground)
#'
#' num_even <- compose(recursive_add, is_even)
#' num_even(1:10)
#' @export
compose <- function(f, g) {
  return(function(...) f(g(...)))
}
