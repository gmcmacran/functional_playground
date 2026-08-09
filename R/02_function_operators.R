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

#' @keywords internal
memoize <- function(f) {
  force(f)
  memo <- list()

  g <- function(n) {
    helper <- function(n) {
      if (as.character(n) %in% names(memo)) {
        return(memo[[as.character(n)]])
      } else {
        memo[as.character(n)] <<- f(n)
        return(memo[[as.character(n)]])
      }
    }
    return(helper(n))
  }
  return(g)
}

#' @keywords internal
time_f <- function(f) {
  force(f)

  g <- function(x) {
    start_time <- Sys.time()
    f(x)
    end_time <- Sys.time()
    return(end_time - start_time)
  }
  return(g)
}

#' @keywords internal
cumulative_f <- function(f) {
  force(f)
  out <- function(x) {
    inner_out <- vector(length = length(x))
    if (length(x) == 0) {
      inner_out <- f(x)
    } else {
      helper <- function(endpoint) {
        return(f(x[1:endpoint]))
      }
      inner_out <- map(seq(1, length(x), 1), helper)
    }
    return(inner_out)
  }
  return(out)
}
