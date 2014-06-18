## The functions are used to store and calculate the Inverse of a Matrix. 
## The function calculates the value Inverse only when it does not have a 
## cached copy, reducing the cost of processing.

## makeCacheMatrix Functionis used to set and get the matrix and inverse matrix

makeCacheMatrix <- function(x = matrix()) {
  m <<- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() {
    x
  }
  setInverse <- function(Inverse) {
    m <<- Inverse
  }
  getInverse <- function(){
    m
  }
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## cacheSolve Function is used to calculate/retrieve the inverse of a matrix 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getInverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data)
  x$setInverse(m)
  m
}
