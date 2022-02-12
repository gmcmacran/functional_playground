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
