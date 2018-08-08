## Write a short comment describing this function
## makeCacheMatrix builds a list that contains four functions
##  - get: returns the matrix
##  - set: sets the matrix
##  - getinverse: returns the inverse of the mtrix
##  - setinverse: sets the inverse of the matrix
makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(y) {
        x <<- y
        i <<- NULL
    }
    get <- function() x
    setinverse <- function(solve) i <<- solve
    getinverse <- function() i
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}


## cacheSolve accepts a list containing a matrix and 
## four functions (get, set, getinverse and setinverse) 
## which handle the caching mechanism for the inverse
## of the matrix.
cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    i <- x$getinverse()
    if(!is.null(i)) {
        message("Getting cached inverse")
        return(i)
    }
    data <- x$get()
    i <- solve(data, ...)
    x$setinverse(i)
    i
}
