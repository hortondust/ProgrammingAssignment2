#functions for computing the inverse of a matrix, and caching the inverse to save computations if requested again.

## Creates a inverse-caching matrix from the given input matrix.
makeCacheMatrix <- function(x = matrix()) {
  solved <- NULL
  set <- function(y) {
    x <<- y
    solved <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) solved <<- solve
  getsolve <- function() solved
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
