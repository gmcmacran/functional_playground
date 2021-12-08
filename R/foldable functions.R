source('R/higher order functions.R')

add <- function(x1, x2) {
  return(x1 + x2)
}

recursive_add <- foldr(add, 0)

multiply <- function(x1, x2) {
  return(x1 * x2)
}

recursive_multiply <- foldl(multiply, 1)

max_scaler <- function(x1, x2) {
  if (x1 >= x2)
    out <- x1
  else
    out <- x2

  return(out)
}

recursive_max <- foldr(max_scaler, -Inf)

min_scaler <- function(x1, x2) {
  if (x1 <= x2)
    out <- x1
  else
    out <- x2

  return(out)
}

recursive_min <- foldl(min_scaler, Inf)

and <- function(x1, x2) {
  return(x1 && x2)
}

recursive_all <- foldr(and, TRUE)

or <- function(x1, x2) {
  return(x1 || x2)
}
recursive_any <- foldl(or, FALSE)

union_scaler <- function(x1, x2) {
  return(c(x1, x2))
}
recursive_union <- foldr(union_scaler, vector())

intersect_scaler <- function(x1, x2) {
  if (length(x1) == 0)
    out <- vector()
  else if (length(x2) == 0)
    out <- x1
  else if (x1 != x2)
    out <- vector()
  else
    out <- x1

  return(out)
}
recursive_intersect <- foldl(intersect_scaler, vector())

cumulative_add <- cumulative_f(recursive_add)

cumulative_multiply <- cumulative_f(recursive_multiply)

cumulative_max <- cumulative_f(recursive_max)

cumulative_min <- cumulative_f(recursive_min)

cumulative_all <- cumulative_f(recursive_all)

cumulative_any <- cumulative_f(recursive_any)

always_true <- function(...) {
  return(TRUE)
}

always_false <- negate(always_true)

