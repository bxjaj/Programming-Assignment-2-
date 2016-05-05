## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

sapplymakeCacheMatrix <- function(x = matrix()) {
  ## set the matrix
  ## get the matrix
  ## set the inverse
  ## get the inverse
  ## this list is used as the input to cacheSolve()

inv_x <- NULL
set <- function(y) {
## use "<<-" to assign a value to an object in an environment 
x <<- y
inv_x <<- NULL
}
get <- function() x
setinse<- function(inse) inv_x <<-inse
getinse <- function() inv_x
list(set = set, get = get,
setinse = setinse,
getinse = getinse)
}




## Write a short comment describing this function

## This function computes the inverse of the special "matrix" created by 
## makeCacheMatrix above.

cacheSolve <- function(x, ...) {
inv_x <- x$getinse()
if (!is.null(inv_x)) {
## get it from the cache and skips the computation.
message("getting cached inverse matrix")
return(inv_x)
} else {
inv_x <- solve(x$get())
  ## sets the value of the inverse in the cache via the setinv function.
x$setinse(inv_x)
return(inv_x)
}
}
