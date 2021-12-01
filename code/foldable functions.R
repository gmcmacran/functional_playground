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

union_all <- foldr(union, vector())
all(union_all(c(1, 2, 3)) == c(1, 2, 3))
all(union_all(vector()) == vector())

intersect_all <- foldl(intersect, vector())
all(intersect_all(c(1, 2, 3)) == vector())
all(intersect_all(vector()) == vector())
