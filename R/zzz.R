con_utf8 <- function(x) rawToChar(content(x, "raw", encoding = "UTF-8"))

tc <- function(l) Filter(Negate(is.null), l)

argsnull <- function(x) {
  if (length(x) == 0) {
    NULL
  } else {
    x
  }
}

nmslwr <- function(x) {
  setNames(x, tolower(names(x)))
}

itbase <- function() 'http://www.itis.gov/ITISWebService/services/ITISService/'
itjson <- function() 'http://www.itis.gov/ITISWebService/jsonservice/'
iturl <- function(x) {
  if (!tolower(x) %in% c('json', 'xml')) {
    stop("'wt' must be one of 'json' or 'xml'", call. = FALSE)
  }
  switch(
    x,
    json = itjson(),
    xml = itbase()
  )
}