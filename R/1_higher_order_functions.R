#' @title Higher order functions
#' @param f A function.
#' @param id Value when x is empty
#' @param x A vector. Numeric or logical depending on function.
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
