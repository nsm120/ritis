% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/full_record.R
\name{full_record}
\alias{full_record}
\title{Get full record from TSN or lsid}
\usage{
full_record(tsn = NULL, lsid = NULL, wt = "json", raw = FALSE, ...)
}
\arguments{
\item{tsn}{TSN for a taxonomic group (numeric). Required.}

\item{lsid}{lsid for a taxonomic group (character)}

\item{wt}{(character) One of "json" or "xml". Required.}

\item{raw}{(logical) Return raw JSON or XML as character string. Required.
Default: \code{FALSE}}

\item{...}{curl options passed on to \link[crul:HttpClient]{crul::HttpClient}}
}
\description{
Get full record from TSN or lsid
}
\examples{
\dontrun{
# from tsn
full_record(tsn = 50423)
full_record(tsn = 202385)
full_record(tsn = 183833)

full_record(tsn = 183833, wt = "xml")
full_record(tsn = 183833, raw = TRUE)

# from lsid
full_record(lsid = "urn:lsid:itis.gov:itis_tsn:180543")
full_record(lsid = "urn:lsid:itis.gov:itis_tsn:180543")
}
}
