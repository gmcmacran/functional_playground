#' @keywords internal
is_even_base <- function(x) {
  if (length(x) != 1) {
    stop()
  }

  if (!is.integer(x)) {
    stop()
  }

  if (x == 0) {
    return(TRUE)
  } else {
    return(is.odd(x - 1L))
  }
}

#' @keywords internal
is_odd_base <- function(x) {
  if (length(x) != 1) {
    stop()
  }

  if (!is.integer(x)) {
    stop()
  }

  if (x == 0) {
    return(FALSE)
  } else {
    return(is.even(x - 1L))
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
#' is.even(x)
#' is.odd(x)
#' @export
is.even <- function(x) {
  return(map(x, is_even_base))
}

#' @rdname is.even
#' @export
is.odd <- function(x) {
  return(map(x, is_odd_base))
}
