## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

##function to accept the matrix
makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
set <- function(z){
  x <<-z
  inv <- NULL
}
  ##assigning 
get<-function() x
setInv<-function(inverse)inv<<-inverse
getInv<-function()inv
list(set=set,
     get=get,
     setInv = setInv,
     getInv = getInv
     )
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    inv<-x$getInv()
    if(!is.null(inv)){
      message("Processing cached data")
      return(inv)
    }

mat<-x$get()
inv<- solve(mat,..)
x$setInv(inv)
inv
}
