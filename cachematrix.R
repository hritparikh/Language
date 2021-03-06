## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
m <- NULL
set <- function(y){
	x<<- y
	m <<- NULL
}
# Gets function for the matrix
get <- function(){
	x
}
#Sets the inverse of the function
setinverse <- function(inverse)}{
	m <<- inverse
}
 
  # Retrieve the inverse of the matrix
getinverse <- function (){
	m
}

list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinverse()
        if(!is.null(m)){
        	message("Getting cachced data")
        	return(m)
        }
  ## Return the computed inverse.  	
        data <- x$get()
        m <- solve(data, ...)
        x$setinverse(m)
        m
}
