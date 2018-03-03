## These functions compute the inverse of a matrix and cache it. 
## the "makeCachceMatrix" function creates a matrix that caches its inverse

makeCacheMatrix <- function(x = matrix()) {
   m<- NULL
   set<- function(y){
      x<<- y
      m<<- NULL
   }
   get<- function ( ) x
   setinverse<- function(inverse) m<<- inverse
   getinverse<- function() m
   m<- solve(x)
   list(set=set, get=set, setinverse=setinverse, getinverse=getinverse)
}
## The Cachesolve function returns the inverse, either through returning the cached inverse or solving.

cacheSolve <- function(x, ...) {
   m<- x$getinverse()
   if (!is.null(m)){
      message("getting cached inverse")
      return(m)
}
   m<- solve(x)
   m
}
