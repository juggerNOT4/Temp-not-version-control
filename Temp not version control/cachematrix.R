## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        m<-NULL
        set<- function(y){
        x<<-y
        m<<-NULL
          }
        get <- function() x
        setsolve <- function(solve) m <<- solve #caching of matrix inverse (using the solve function to calculate)
        getsolve <- funtion() m
        
        list(set = set, get = get, setsolve = setsolve, getsolve = getsolve)
}




cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getsolve()
        if(!is.null(m)) {
          message("Getting cached data")
          return(m)
            }
        data <- x$get()
        m<- solve(data, ...) #caculate the inverse using solve function
        x$setsolve(m) 
        m  #return the inverse
}
