## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x=matrix()){
	inv <- NULL
	set <- function(matrix) {
		x <<- matrix
		inv <<- NULL
	get <- function() {
	}
	setInv <- function(inverse) {
		inv <<- inverse
	}
	getInv <- function()
		inv
	}
	list(set=set, get=get, setInv=setInv, getInv=getInv)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
	m <- x$getInv()
	if(!is.null(m)){
		return(m)
	}
	data<- x$get()
	m <- solve(data) %*% data
	x$setInv(m)
	m
}
