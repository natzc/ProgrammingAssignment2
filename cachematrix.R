## These functions cache and retrieve the inverse of a matrix


## This function takes a matrix as the input and then computes and caches the inverse

makeCacheMatrix<- function(x = matrix()){
  sol <- NULL
  set <- function(y) {
    x <<- y
    sol <<- NULL
  }
  
  get <- function() x
  setsol <- function(solve) sol <<- solve
  getsol <- function() sol
  list(set = set, get = get,
       setsol = setsol,
       getsol = getsol)
  return(sol)
}


## This function retreives the inverse from the cache

cacheSolve<- function(x, ...) {
  s <- x$getsol()
  if(!is.null(sol)) {
    message("Getting data.")
    return(sol)
  }
  data <- x$get()
  sol <- solve(data, ...)
  x$setsol(sol)
  return(sol)
}

