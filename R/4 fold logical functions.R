#' Standard functions implemented in a functional style
#'
#' @param x A logical vector.
#' @details
#'
#' Functions leverage either fold right or fold left.
#'
#' @examples
#' library(functionalPlayground)
#'
#' x <- c(TRUE, TRUE, FALSE, FALSE)
#' recursive_all(x)
#' recursive_any(x)
#' @export
recursive_all <- foldr(and, TRUE)

#' @rdname recursive_all
#' @export
recursive_any <- foldl(or, FALSE)

