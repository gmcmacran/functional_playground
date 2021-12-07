source('code/folding definitions.R')

add <- function(x1, x2) {
  return(x1 + x2)
}

recursive_add <- foldr(add, 0)
recursive_add(1:500) == sum(1:500)

multiply <- function(x1, x2) {
  return(x1 * x2)
}

recursive_multiply <- foldl(multiply, 1)
recursive_multiply(1:500) == prod(1:500)

and <- function(x1, x2) {
  return(x1 && x2)
}

recursive_all <- foldr(and, TRUE)
recursive_all(rep(TRUE, 3)) == all(rep(TRUE, 3))
recursive_all(rep(FALSE, 3)) == all(rep(FALSE, 3))
recursive_all(c(TRUE, FALSE, TRUE)) == all(c(TRUE, FALSE, TRUE))

or <- function(x1, x2) {
  return(x1 || x2)
}
recursive_any <- foldl(or, FALSE)
recursive_any(rep(TRUE, 3)) == any(rep(TRUE, 3))
recursive_any(rep(FALSE, 3)) == any(rep(FALSE, 3))
recursive_any(c(TRUE, FALSE, TRUE)) == any(c(TRUE, FALSE, TRUE))

max_scaler <- function(x1, x2) {
  if (x1 >= x2)
    out <- x1
  else
    out <- x2
  
  return(out)
}

recursive_max <- foldr(max_scaler, -Inf)
recursive_max(c()) == -Inf
recursive_max(c(1, 2, 3)) == 3
recursive_max(c(-1, -2, -3)) == -1
recursive_max(0) == 0
recursive_max(c(1, 1, 1)) == 1

min_scaler <- function(x1, x2) {
  if (x1 <= x2)
    out <- x1
  else
    out <- x2
  
  return(out)
}

recursive_min <- foldl(min_scaler, Inf)
recursive_min(c()) == Inf
recursive_min(c(1, 2, 3)) == 1
recursive_min(c(-1, -2, -3)) == -3
recursive_min(0) == 0
recursive_min(c(1, 1, 1)) == 1

union_scaler <- function(x1, x2) {
  return(c(x1, x2))
}
recursive_union <- foldr(union_scaler, vector())
all(recursive_union(c(1, 2, 3)) == c(1, 2, 3))
all(recursive_union(vector()) == vector())

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
all(recursive_intersect(c(1, 2, 3)) == vector())
all(recursive_intersect(c(1, 1, 1)) == 1)
all(recursive_intersect(vector()) == vector())

