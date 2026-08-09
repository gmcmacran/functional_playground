#' @title Higher order functions
#' @param f A function.
#' @param id Value when the input vector is empty
#' @details The returned function takes a single argument `x`, a vector that is
#'   numeric or logical depending on `f`.
#' @keywords internal
# Reduce from the right.
foldl <- function(f, id) {
  force(f)
  force(id)

  out <- function(x) {
    if (length(x) == 0) {
      return(id)
    } else {
      return(f(x[1], out(x[-1])))
    }
  }
}

#' @keywords internal
# Reduce from the left.
foldr <- function(f, id) {
  force(f)
  force(id)

  out <- function(x) {
    if (length(x) == 0) {
      return(id)
    } else {
      last <- length(x)
      return(f(x[last], out(x[-last])))
    }
  }
}

#' @keywords internal
map <- function(x, f) {
  if (length(x) == 0) {
    return(c())
  } else {
    return(c(f(x[1]), map(x[-1], f)))
  }
}
