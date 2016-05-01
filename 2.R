
R version 3.2.4 (2016-03-10) -- "Very Secure Dishes"
Copyright (C) 2016 The R Foundation for Statistical Computing
Platform: x86_64-apple-darwin13.4.0 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

During startup - Warning messages:
1: Setting LC_CTYPE failed, using "C" 
2: Setting LC_COLLATE failed, using "C" 
3: Setting LC_TIME failed, using "C" 
4: Setting LC_MESSAGES failed, using "C" 
5: Setting LC_MONETARY failed, using "C" 
[R.app GUI 1.67 (7152) x86_64-apple-darwin13.4.0]

WARNING: You're using a non-UTF8 locale, therefore only ASCII characters will work.
Please read R for Mac OS X FAQ (see Help) section 9 and adjust your system preferences accordingly.
[History restored from /Users/Lalala/.Rapp.history]

> sapplymakeCacheMatrix <- function(x = matrix()) {
+ ## set the matrix
+ ## get the matrix
+ ## set the inverse
+ ## get the inverse
+ ## this list is used as the input to cacheSolve()
+ inv_x <- NULL
+ set <- function(y) {
+ ## use "<<-" to assign a value to an object in an environment 
+ x <<- y
+ inv_x <<- NULL
+ }
+ get <- function() x
+ setinse<- function(inse) inv_x <<-inse
+ getinse <- function() inv_x
+ list(set = set, get = get,
+ setinse = setinse,
+ getinse = getinse)
+ }
> 
> cacheSolve <- function(x, ...) {
+ inv_x <- x$getinse()
+ if (!is.null(inv_x)) {
+ ## get it from the cache and skips the computation.
+ message("getting cached inverse matrix")
+ return(inv_x)
+ } else {
+ inv_x <- solve(x$get())
+ ## sets the value of the inverse in the cache via the setinv function.
+ x$setinse(inv_x)
+ return(inv_x)
+ }
+ }
> 