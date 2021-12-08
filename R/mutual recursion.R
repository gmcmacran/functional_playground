source('R/higher order functions.R')

is.even <- function(x) {
  if (length(x) != 1)
    stop()

  if (!is.integer(x))
    stop()

  if (x == 0)
    return(TRUE)
  else
    return(is.odd(x-1L))
}

is.odd <- function(x) {
  if (length(x) != 1)
    stop()

  if (!is.integer(x))
    stop()

  if (x == 0)
    return(FALSE)
  else
    return(is.even(x-1L))
}

evenInts <- seq(2L, 200L, 2L)
oddInts <- evenInts - 1L

all(map(evenInts, is.even)) == TRUE
any(map(evenInts, is.odd))  == FALSE

all(map(oddInts, is.odd)) == TRUE
any(map(oddInts, is.even)) == FALSE
