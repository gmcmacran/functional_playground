negate <- function(f) {
  return(function(...) !f(...))
}

always_true <- function(...) {
  return(TRUE)
}

always_false <- negate(always_true)
always_false()

always_true()
always_true(seq(1, 10, 2))
always_true(rep(TRUE, 10))
always_true(rep(FALSE, 10))
set.seed(1)
always_true(ifelse(runif(10) > .5))

always_false() == FALSE
always_false(seq(1, 10, 2))  == FALSE
always_false(rep(TRUE, 10))  == FALSE
always_false(rep(FALSE, 10)) == FALSE
set.seed(1)
always_false(ifelse(runif(10) > .5)) == FALSE

map <- function(x, f) {
  out <- vector(typeof(x), length(x))
  for(i in seq_along(x))
    out[i] <- f(x)
  return(out)
}

source('code/folding definitions.R')
source('code/foldable functions.R')
cumulative_f <- function(f) {
  out <- function(x) {
    inner_out <- vector(length = length(x))
    for (i in seq_along(x)) {
      inner_out[i] <- f(x[1:i])
    }
    return(inner_out)
  }
}
cumulative_add <- cumulative_f(recursive_add)
cumulative_add(0) == 0
cumulative_add(1) == 1
all(cumulative_add(seq(1:10)) == cumsum(1:10))
all(cumulative_add(seq(-1:-10)) == cumsum(-1:-10))
