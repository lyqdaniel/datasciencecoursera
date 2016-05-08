## similar to the examples on Coursera, this function creates a 
## list containing a set of functions, which are setting the value of
## matrix, getting the matrix, setting the inverse of this matrix,
## and get the inverse of this matrix

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
           i<-NULL
           set<- function(y){
               x<<-y
               i<<-NULL
           }
           get<-function() x
           setinverse<- function(inverse) i<<- inverse
           getinverse<- function() i
           list(set=set, get=get, 
                setinverse=setinverse,
                getinverse=getinverse)
}


## calculates the inverse of matrix created by the function above.
## it directly return the inverse if it is already calculated and
## stored.

cacheSolve <- function(x, ...) {
    i<-x$getinverse()
    if(!is.null(i)){
        message("getting cached inverse matrix")
        reture(i)
    }
    matrix<- x$get()
    i<- solve(matrix,...)
    x$setinverse(i)
    i
        ## Return a matrix that is the inverse of 'x'
}
