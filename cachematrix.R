## Put comments here that give an overall description of what your
## functions do I found an easy test script from the discussion forum of coursea.
# https://class.coursera.org/rprog-005/forum/thread?thread_id=140
# Cheers!

# This function creates a special "matrix" object
# that can cache its inverse.

makeCacheMatrix <- function ( x = matrix() ) {
  
  # We cache the inverse of matrix "x"
  # in the variable "inverse".
  # When there's no matrix, it's supposed to be "NULL".
  inverse <- NULL;
  
  # It's a set function,
  # meaning that we can set a specific matrix
  # to the instance of this class of "matrix".
  set <- function(Z) {
    x <<- Z;
    inverse <<- NULL;
  }
  
  # Get the matrix.
  get <- function() {
    x;
  }
  
  # We can directly set the inverse of the matrix.
  setinverse <- function(inv) {
    inverse <<- inv;
  }
  
  # We can get the inverse of the matrix.
  getinverse <- function() {
    inverse;
  }
  
  # Actually "makeCacheMatrix" is a list,
  # or an object, or a class.
  # After we instantiate the class,
  # we'll get a instance with its methods.
  list(	set = set,
        get = get,
        setinverse = setinverse,
        getinverse = getinverse
  )
}

# This function computes the inverse of the special "matrix"
# returned by makeCacheMatrix above.
# If the inverse has already been calculated
# (and the matrix has not changed),
# then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
  
  # Here we receive the parameter "x"
  # as a instance of "makeCacheMatrix".
  # We first check the value of inverse.
  inverse <- x$getinverse();
  
  
  if( !is.null(inverse) ) {
    message("getting chached data");
  }
  else {
    data <- x$get();
    inverse <- x$setinverse(solve(data));
  }
  inverse;
  
  ## Return a matrix that is the inverse of 'x'
}
