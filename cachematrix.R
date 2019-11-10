## The script includes two functions to create a special matrix that can cache 
## an inverted matrix of the input and return the cached value if the matrix has
## already been inverted before

## Creates a list that includes instructions for cacheSolve to call. The
## instructions set a value for the matrix, get a value of the matrix, set
## a value of the matrix, and get a value of the matrix

makeCacheMatrix <- function(x = matrix()) {
    x_inv <- NULL
    set <- function(y) {
        x <<- y
        x_inv <<- NULL
    }
    get <- function() x
    set_inv <- function(inv) x_inv <<- inv
    get_inv <- function() x_inv
    list(set = set, get = get, set_inv = set_inv, get_inv = get_inv)
}


## Solves for the inverse of the given matrix that was formatted through
## makeCacheMatrix. If the value has been calculated before, it is cached
## in the list from makeCacheMatrix and will be recalled instead of
## recalculated

cacheSolve <- function(x, ...) {
    x_inv <- x$get_inv()
    if(!is.null(x_inv)) {
        message("getting cached data")
        return(x_inv)
    }
    data <- x$get()
    x_inv <- solve(data, ...)
    x$set_inv(x_inv)
    x_inv
    ## Return a matrix that is the inverse of 'x'
}
