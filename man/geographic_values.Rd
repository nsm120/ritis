% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/geographic_values.R
\name{geographic_values}
\alias{geographic_values}
\title{Get all possible geographic values}
\usage{
geographic_values(wt = "json", raw = FALSE, ...)
}
\arguments{
\item{wt}{(character) One of "json" or "xml". Required.}

\item{raw}{(logical) Return raw JSON or XML as character string. Required.
Default: \code{FALSE}}

\item{...}{curl options passed on to \link[crul:HttpClient]{crul::HttpClient}}
}
\value{
character vector of geographic names
}
\description{
Get all possible geographic values
}
\examples{
\dontrun{
geographic_values()
geographic_values(wt = "xml")
geographic_values(wt = "json", raw = TRUE)
}
}
