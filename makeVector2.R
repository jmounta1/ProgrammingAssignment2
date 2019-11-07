makeVector_revised <- function(x = numeric()) {
  print(x)
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
    print(x)
  }
  get <- function(x)
  setmean <- function(mean)
  m <<- mean
  getmean <- function(m)
  list(set = set, get = get,
       setmean = setmean,
       getmean = getmean)
}