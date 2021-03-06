% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/description.R
\name{description}
\alias{description}
\title{Get description of the ITIS service}
\usage{
description(wt = "json", raw = FALSE, ...)
}
\arguments{
\item{wt}{(character) One of "json" or "xml". Required.}

\item{raw}{(logical) Return raw JSON or XML as character string. Required.
Default: \code{FALSE}}

\item{...}{curl options passed on to \link[crul:HttpClient]{crul::HttpClient}}
}
\value{
a string, the ITIS web service description
}
\description{
Get description of the ITIS service
}
\examples{
\dontrun{
description()
description(wt = "xml")
}
}
