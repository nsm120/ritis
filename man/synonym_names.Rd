% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/synonym_names.R
\name{synonym_names}
\alias{synonym_names}
\title{Returns a list of the synonyms (if any) for the TSN.}
\usage{
synonym_names(tsn, wt = "json", raw = FALSE, ...)
}
\arguments{
\item{tsn}{TSN for a taxonomic group (numeric). Required.}

\item{wt}{(character) One of "json" or "xml". Required.}

\item{raw}{(logical) Return raw JSON or XML as character string. Required.
Default: \code{FALSE}}

\item{...}{curl options passed on to \link[crul:HttpClient]{crul::HttpClient}}
}
\value{
a data.frame
}
\description{
Returns a list of the synonyms (if any) for the TSN.
}
\examples{
\dontrun{
synonym_names(tsn=183671) # tsn not accepted
synonym_names(tsn=526852) # tsn accepted
}
}
