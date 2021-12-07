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

