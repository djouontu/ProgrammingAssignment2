## "makeCacheMatrix is the function which create a 
## list of function: set() function set the value of the Matrix,
## get() function return the value of the Matrix
## setinverse() function set the inverse of the Matrix 
## getinverse() function get the inverse of the Matrix


makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
set <- function(z){
x <<- z
inv <<- NULL
}
get <- function() x
setinverse <- function(inverse) inv <<- inverse
getinverse <- function() inv
list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## cacheSolve function input is v <- makeCacheMatrix(x).
## cacheSolve calculate the inverse of matrix v,it first checks to see if inverse has laready been
## calculated.if so it get the inverse from cache otherwise it calculates the inverse 

cacheSolve <- function(x, ...){
        inv <- x$getinverse()
    if(!is.null(inv)){
        return(inv)
      }
    else{
 y <- x$get()
 inv <- solve(y)
 x$setinverse(inv)
  inv
 }
}
