foldr <- function(f, id) {
  force(f)
  force(id)
  
  out <- function(x){
    if (length(x) == 0) {
      return(id)
    } else {
      return(f(x[1], out(x[-1])))
    }
  }
}

foldl <- function(f, id) {
  force(f)
  force(id)
  
  out <- function(x){
    if (length(x) == 0) {
      return(id)
    } else {
      last <- length(x)
      return(f(x[last], out(x[-last])))
    }
  }
}

map <- function(x, f) {
  if (length(x) == 0)
    return(c())
  else
    return(c(f(x[1]), map(x[-1], f)))
  return(out)
}

cumulative_f <- function(f) {
  force(f)
  out <- function(x) {
    inner_out <- vector(length = length(x))
    if (length(x) == 0)
      inner_out <- f(x)
    else {
      helper <- function(endpoint) {
        return(f(x[1:endpoint]))
      }
      inner_out <- map(1:length(x), helper)
    }
    return(inner_out)
  }
}

negate <- function(f) {
  return(function(...) !f(...))
}