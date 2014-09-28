## This function creates a matrix, that can cache its inverse.

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        
        ## initialize the inverse
        
        i <- NULL
        
        ## Steps
        ##1: Set the matrix
        ##2: Get the matrix
        ##3: Set the inverse
        ## 4: Get the inverse
        
        
        ##1: Set the matrix
        set <- function( matrix ) {
                m <<- matrix
                
                i <<- NULL
                }
        
        ## 2: Get the matrix
        
        get <- function()
        {
                m
        }
        
        ## 3: Set the inverse
           
        setinverse <- function(inverse)
        {
                i <- inverse
        }
        
        ##4: Get the inverse
        getinverse <- function()
        {
                i
        }
        
        ## Return a list of method
        
        list (set = set, get = get, setInverse = setinverse, getInverse = getinverse)
}


##This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated (and the matrix has not changed),
## then the cachesolve should retrieve the inverse from the cache.

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
        
        m <- x$getInverse()
        if( !is.null(m) ) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        
        m <- solve(data) %*% data
        
        x$setInverse(m)
        
        m
        
}



