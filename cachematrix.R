## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	inv <- NULL
	set <- function(y) {
		x <<- y
		inv <<- NULL
	}
	get <- function() x
	setInversion <- function(invers) inv <<- invers
	getInversion <- function() inv
	list(set = set, get = get,
	   setInversion = setInversion,
	   getInversion = getInversion)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	i<-x$getInversion()
	if(!is.null(i)){
		message("Got cached data")
		return(i)
	}
	data<-x$get()
	i<-solve(data)
	x$setInversion(i)
	i
}
