negate <- function(f) {
  return(function(...) !f(...))
}

always_true <- function() {
  return(TRUE)
}

always_false <- negate(always_true)
always_false()

