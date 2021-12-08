#' Standard functions implemented in a functional style
#'
#' @param x A numeric vector.
#' @details
#'
#' Functions leverage either fold right or fold left.
#'
#' @examples
#' library(functionalPlayground)
#'
#' x <- 1:10
#' recursive_add(x)
#' recursive_multiply(x)
#' recursive_max(x)
#' recursive_min(x)
#' @export
recursive_add <- foldr(add, 0)

#' @rdname recursive_add
#' @export
recursive_multiply <- foldl(multiply, 1)

#' @rdname recursive_add
#' @export
recursive_max <- foldr(max_scaler, -Inf)

#' @rdname recursive_add
#' @export
recursive_min <- foldl(min_scaler, Inf)

