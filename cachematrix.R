## Functions that calculate and cache the inverse of a matrix


## This function caches the inverse of a matrix calculated by cacheSolve function 

makeCacheMatrix <- function(x = matrix()) {
	rev<-NULL
	get <- function() x
	setrev<-function(reverse) rev<<-reverse
	getrev<-function() rev
	list(get=get,setrev=setrev,getrev=getrev)
}


## This function calculate the inverse of a matrix stored in a makeCacheMatrix object and save the result in the cache of the same object

cacheSolve <- function(x, ...) {
        rev<-x$getrev()
        if(!is.null(rev)) {
        	message("getting cached data")
        	return(rev)
        }
        data.matrix<-x$get()
        rev<-solve(data.matrix)
        x$setrev(rev)
        rev
}
