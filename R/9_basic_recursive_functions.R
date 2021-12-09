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
