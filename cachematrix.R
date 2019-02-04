## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
   m<-NULL
   set<-function(matrix){
     x<<-matrix
     m<<-NULL
   }
   get<-function(){
     x
   }
   setInverse<-function(inverse_matrix){
     m<<-inverse_matrix
   }
   getInverse<-function(){
     m
   }
   list(set = set, get = get,
        setInverse = setInverse,
        getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  newm<-x$getInverse()
  if(!is.null(m1)){
    message("getting cached data")
    return(newm)
  }
  newm<-x$get()
  m2<-solve(newm)%*%newm
  x$setInverse(newm)
  }

