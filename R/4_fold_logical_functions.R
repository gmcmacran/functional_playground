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
