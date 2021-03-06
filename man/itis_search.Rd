% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/itis_search.R
\name{itis_search}
\alias{itis_search}
\title{ITIS Solr search}
\usage{
itis_search(..., proxy = NULL, callopts = list())
}
\arguments{
\item{...}{Arguments passed on to the \code{params} parameter of
the \code{\link[solrium:solr_search]{solrium::solr_search()}} function}

\item{proxy}{List of arguments for a proxy connection,
including one or more of: url, port, username, password,
and auth. See \code{\link[crul:proxy]{crul::proxy()}} for  help, which is used to
construct the proxy connection.}

\item{callopts}{Curl options passed on to \link[crul:HttpClient]{crul::HttpClient}}
}
\description{
ITIS Solr search
}
\examples{
\dontrun{
itis_search(q = "tsn:182662")

itis_search(q = "nameWOInd:Liquidamber\\\\\%20styraciflua~0.4")
# matches only monomials
itis_search(q = "nameWOInd:/[A-Za-z0-9]*[\%20]{0,0}*/")
# matches only binomials
itis_search(q = "nameWOInd:/[A-Za-z0-9]*[\%20]{1,1}[A-Za-z0-9]*/")
# matches only trinomials
itis_search(q = "nameWOInd:/[A-Za-z0-9]*[\%20]{1,1}[A-Za-z0-9]*[\%20]{1,1}[A-Za-z0-9]*/")
# matches binomials or trinomials
itis_search(q = "nameWOInd:/[A-Za-z0-9]*[\%20]{1,1}[A-Za-z0-9]*[\%20]{0,1}[A-Za-z0-9]*/")

itis_search(q = "nameWOInd:Poa\\\\\%20annua")

itis_search(q = "nameWOInd:/[A-Za-z0-9]*[\%20]{0,0}*/", rows = 2)
itis_search(q = "nameWOInd:/[A-Za-z0-9]*[\%20]{0,0}*/", rows = 200)

itis_search(q = "nameWOInd:/[A-Za-z0-9]*[\%20]{0,0}*/",
   fl = c('nameWInd', 'tsn'))
}
}
