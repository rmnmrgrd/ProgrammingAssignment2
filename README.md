### Introduction

Two functions have been implemented, based on the project forked from GitHub.

The first one, `makeCacheMatrix`, accepts a matrix and builds the functions
that allow the programmer to get and set the value of the matrix and the value
of the inverse matrix. It is not verified if the matrix is invertible, as the
assignment assumes that the matrix is. Setting the value of the matrix clears
the cached inverse value of the matrix.

The second one, `cacheSolve`, accepts a cached matrix as returned by
`makeCacheMatrix` and verifies if the inverse has been calculated. If so, that
value is returned; otherwise, the inverse is calculated and stored in the
cached matrix. 

The following code ensures that the implementation of the functions, given the
assumptions of the assignment, covers the requirements.

<!-- -->
    source("cachematrix.R")
    mat <- matrix(c(1,2,2,1), nrow=2, ncol=2)
    cachedMatrix <- makeCacheMatrix(mat)
    cachedMatrix$get()  ## shows the matrix
    invmat <- cacheSolve(cachedMatrix)
    invmat %*% mat ## shows a 2-dimensional unitary matrix
    
