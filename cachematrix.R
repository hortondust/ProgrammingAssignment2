#functions for computing the inverse of a matrix, and caching the inverse to save computations if requested again.

## Creates a inverse-caching matrix from the given input matrix.
makeCacheMatrix <- function(x = matrix()) {
  solved <- NULL
  set <- function(y) {
    x <<- y
    solved <<- NULL
  }
  get <- function() x
  setsolved <- function(solve) solved <<- solve
  getsolved <- function() solved
  list(set = set, get = get,
       setsolved = setsolved,
       getsolved = getsolved)
}


## returns the inverse of the given cachable matrix either from the cache or computationally
cacheSolve <- function(x, ...) {
  solved <- x$getsolved()
  if(!is.null(solved)) {
    return(solved)
  }
  data <- x$get()
  solved <- solve(data, ...)
  x$setsolved(solved)
  solved
}
