## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
a<- NULL
  set<- function(y) {
x<<- y
a<<- NULL
}
get<- function()x
setInverse<- function(inverse)a<<- inverse
getInverse<- function()a
list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

## Cachesolve will compute the inverse of the special "matrix" returned above
## If matrix is already calculated(unchanged) then will retrive from cache

cacheSolve <- function(x, ...) {
  a<- x$getInverse()
  if(!is.null(a)){
    message("getting cached data")
    return(a)
  }
  mat<- x$get()
  a<- solve(mat, ...)
  x$setInverse(a)
 a
}
        ## Return a matrix that is the inverse of 'x'

