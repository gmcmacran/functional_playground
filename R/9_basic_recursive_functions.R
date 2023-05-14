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

#' Standard functions implemented by recursion
#'
#' @param m A positive integer.
#' @param n A positive integer.
#' @details
#'
#' Functions leveraging recursion.
#'
#' This function will only finish in a reasonable amount of time
#' for m and n less than or equal to 4.
#'
#' @examples
#' library(functionalPlayground)
#'
#' ackermann(2, 1)
#' ackermann(1, 2)
#' @export
ackermann <- function(m, n) {
  if (m == 0) {
    return(n + 1)
  } else if (n == 0) {
    return(ackermann(m - 1, 1))
  } else {
    return(ackermann(m - 1, ackermann(m, n - 1)))
  }
}

#' Standard functions implemented by recursion
#'
#' @param x A vector that is not empty.
#' @details
#'
#' Functions leveraging recursion.
#'
#' @examples
#' library(functionalPlayground)
#'
#' recursive_length(1:10)
#' recursive_length(1)
#' @export
recursive_length <- function(x) {
  if (is.na(x[-1][1])) {
    return(1)
  } else {
    return(1 + recursive_length(x[-1]))
  }
}

#' Standard functions implemented by recursion
#'
#' @param x A vector that is not empty.
#' @param decreasing Logical. Should the vector be sorted in descending order?
#' @details
#'
#' Functions leveraging recursion.
#'
#' @examples
#' library(functionalPlayground)
#'
#' recursive_sort(1:10)
#' recursive_sort(10:1, TRUE)
#' @export
recursive_sort <- function(x, decreasing = FALSE) {
  merge <- function(a, b) {
    if (length(a) == 0) {
      return(b)
    } else if (length(b) == 0) {
      return(a)
    } else if (a[1] < b[1]) {
      return(c(a[1], merge(a[-1], b)))
    } else {
      return(c(b[1], merge(a, b[-1])))
    }
  }

  mergesort <- function(x) {
    if (length(x) < 2) {
      return(x)
    } else {
      h <- floor(length(x) / 2)
      return(merge(mergesort(x[1:h]), mergesort(x[(h + 1):length(x)])))
    }
  }

  x <- mergesort(x)
  if (decreasing) {
    x <- recursive_reverse(x)
  }
  return(x)
}

#' Standard functions implemented by recursion
#'
#' @param n A numeric vector containing one integer.
#' @details
#'
#' Functions leveraging recursion.
#'
#' @examples
#' library(functionalPlayground)
#'
#' hofstadter_g(0)
#' hofstadter_g(1)
#' hofstadter_g(2)
#' hofstadter_g(3)
#' @export
hofstadter_g <- function(n) {
  if (n == 0) {
    return(0)
  } else {
    out <- n - hofstadter_g(hofstadter_g(n - 1))
    return(out)
  }
}

#' Standard functions implemented by recursion
#'
#' @param n A numeric vector containing one integer.
#' @details
#'
#' Functions leveraging recursion.
#'
#' @examples
#' library(functionalPlayground)
#'
#' hofstadter_h(0)
#' hofstadter_h(1)
#' hofstadter_h(2)
#' hofstadter_h(3)
#' @export
hofstadter_h <- function(n) {
  if (n == 0) {
    return(0)
  } else {
    out <- n - hofstadter_h(hofstadter_h(hofstadter_h(n - 1)))
    return(out)
  }
}

#' Standard functions implemented by recursion
#'
#' @param n A numeric vector containing one integer.
#' @details
#'
#' Functions leveraging recursion.
#'
#' @examples
#' library(functionalPlayground)
#'
#' hofstadter_q(1)
#' hofstadter_q(2)
#' hofstadter_q(3)
#' @export
hofstadter_q <- function(n) {
  if (n == 1 || n == 2) {
    return(1)
  } else {
    out <- hofstadter_q(n - hofstadter_q(n - 1)) +
      hofstadter_q(n - hofstadter_q(n - 2))
    return(out)
  }
}

#' Standard functions implemented by recursion
#'
#' @param a A positive integer vector of length 1.
#' @param b A positive integer vector of length 1.
#' @details
#'
#' Functions leveraging recursion.
#'
#' @examples
#' library(functionalPlayground)
#'
#' recursive_gcd(4L, 6L)
#' recursive_gcd(10L, 20L)
#' recursive_gcd(1L, 100L)
#'
#' recursive_lcm(4L, 6L)
#' recursive_lcm(10L, 20L)
#' recursive_lcm(1L, 100L)
#' @export
recursive_gcd <- function(a, b) {
  # euclidean algorithm

  # switch and b
  # a smaller
  if (a > b) {
    temp <- b
    b <- a
    a <- temp
    rm(temp)
  }

  if (a == 0) {
    return(b)
  } else {
    return(recursive_gcd(a, b %% a))
  }
}


#' @rdname recursive_gcd
#' @export
recursive_lcm <- function(a, b) {
  num <- a * b
  denom <- recursive_gcd(a, b)
  out <- num / denom
  return(out)
}
