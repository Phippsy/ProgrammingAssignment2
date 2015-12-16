## Create a special matrix object which can cache its own inverse, using a cacheSolve function to get or set these values as required.

    ## Creates a special "matrix" object that can cache its inverse.
    makeCacheMatrix <- function(x = matrix()) {
    	# Create a null matrix to hold the inverse values
        inv.mx<-NULL
    	# A function to set the matrix values
        set<-function(y) {
            mx<<-y
            # reset the inverse matrix so it has to be recomputed with values of newly supplied matrix
            inv.mx<-NULL
        }
        # Get the matrix values
        get<-function() {
            mx
        }
        # Set the inverse matrix values
        setInverse<-function(y) {
            inv.mx<<-solve(y)
        }
        # Get the inverse matrix values
        getInverse<-function() {
            inv.mx
        }
        # Return each function above together as a list
        list(
            set=set,
            get=get,
            setInverse=setInverse,
            getInverse=getInverse
            )
    }

    ## Computes the inverse of the special "matrix" returned by makeCacheMatrix
    cacheSolve <- function(x, ...) {        
        # Assign the inverse matrix value currently held in x to a variable, inv.mx
        inv.mx<-x$getInverse()
        # If the inverse matrix value is not null, return that value
        if ( !is.null(inv.mx) ) {
            # Send the user a message that the value is being retrieved.
            message("Retrieving values from cache")
            return(inv.mx)
        }
        # If the inverse matrix value is null, compute the inverse and assign its' values to inv.mx
            # Store the matrix in a local variable
            mx<-x$get()
            # Compute the inverse matrix values and write them back to x$setInverse
            inv.mx<-solve(mx, ...)
            # Return the values of the inverse matrix
            inv.mx
    }
