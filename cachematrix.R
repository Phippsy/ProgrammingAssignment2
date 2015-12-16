## Create a special matrix object which can cache its own inverse, using a cacheSolve function to get or set these values as required.

## Creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
	# Create a null matrix to hold the inverse values
    inv.mx<-
	# A function to set the matrix values
    set<-function()
    # A function to get the matrix values
    get<-function()
    # A function to set the inverse matrix values
    setInverse<-function()
    # A function to get the inverse matrix values
    getInverse<-function()
    # Return each function above together as a list

}

## Computes the inverse of the special "matrix" returned by makeCacheMatrix
cacheSolve <- function(x, ...) {        
    # Assign the inverse matrix value currently held in x to a variable, inv.mx
    inv.mx<-
    # If the inverse matrix value is not null, return that value
    if ( !is.null(inv.mx) ) {
        # Send the user a message that the value is being retrieved.
        message("Retrieving values from cache")
    }
    # If the inverse matrix value is null, compute the inverse and assign its' values to inv.mx
        # Store the matrix in a local variable
        mx<-
        # Compute the inverse matrix values and write them back to x$setInverse
        inv.mx<-solve()

        # Return the values of the inverse matrix
        inv.mx
}