#' Standard functions implemented in a functional style
#'
#' @param x A numeric vector.
#' @details
#'
#' Functions leverage mutual recursion.
#'
#' @examples
#' library(functionalPlayground)
#'
#' x <- 1:10
#' is.even(x)
#' is.odd(x)
#' @export
is.even <- function(x) {
  if (length(x) != 1)
    stop()

  if (!is.integer(x))
    stop()

  if (x == 0)
    return(TRUE)
  else
    return(is.odd(x-1L))
}

#' @rdname is.even
#' @export
is.odd <- function(x) {
  if (length(x) != 1)
    stop()

  if (!is.integer(x))
    stop()

  if (x == 0)
    return(FALSE)
  else
    return(is.even(x-1L))
}
