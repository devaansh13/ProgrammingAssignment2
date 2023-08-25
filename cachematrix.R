## Put comments here that give an overall description of what your
## functions do

## Create two functions namely- 
## "makeCacheMatrix" and "cacheSolve" that cache the inverse of a matrix
## Write a short comment describing this function

## makeCacheMatrix is a function which creates a special "matrix" object that can 
## cache its inverse for the input

makeCacheMatrix <- function(x = matrix()) {
  
  ## Initialize the inverse property
  
  i <- NULL
  
  ## Method to set the matrix
  
  set <- function( matrix ) {
    x <<- matrix
    i <<- NULL
  }
  
  ## Method to get the matrix
  
  get <- function() {
    ## Return the matrix
    x
  }
  
  ## Method to set the inverse of the matrix
  
  setinverse <- function(inverse) {
    i <<- inverse
  }
  
  ## Method to get the inverse of the matrix
  getinverse <- function() {
    ## Return the inverse property
    i
  }
  
  ## Return a list of the methods
  
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
  
}
## Write a short comment describing this function



## cacheSolve is a function which computes the inverse of the special "matrix" 
## returned by makeCacheMatrix above.If the inverse has already been calculated 
## (and the matrix has not changed), then the cachesolve will retrieve the 
## inverse from the cache

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  
  i <- x$getinverse()
  
  
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  
  #x
  
  ## Get the matrix from our object
  data <- x$get()
  ## Calculate the inverse
  i <- solve(data,...)
  ## Set the inverse to the object
  x$setinverse(i)
  ## Return the matrix
  i
  
  }
  
