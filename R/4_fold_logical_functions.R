#' Standard logical functions implemented by folding
#'
#' @param x A logical vector.
#' @details
#'
#' Functions leveraging either fold right or fold left.
#'
#' @examples
#' library(functionalPlayground)
#'
#' x <- c(TRUE, TRUE, FALSE, FALSE)
#' recursive_all(x)
#' recursive_any(x)
#' recursive_none(x)
#' @export
recursive_all <- foldr(and, TRUE)

#' @rdname recursive_all
#' @export
recursive_any <- foldl(or, FALSE)

#' Standard logical functions implemented by mapping and folding.
#'
#' @param x A vector.
#' @param y A vector to check against. Is x in y?
#' @details
#'
#' Functions leveraging either fold right or fold left and mapping.
#'
#' @examples
#' library(functionalPlayground)
#'
#' recursive_is_in(c(1, 3, 5), c(1, 4))
#' @export
recursive_is_in <- function(x, y) {
  single_is_in <- function(x) {
    recursive_any(x == y)
  }

  out <- map(x, single_is_in)
  return(out)
}
