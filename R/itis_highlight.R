#' ITIS Solr highlight
#'
#' @export
#' @param ... Args passed to \code{\link[solrium]{solr_highlight}}
#' @examples \dontrun{
#' itis_highlight(q = "rank:Species", hl.fl = 'rank', rows=10)
#' }
itis_highlight <- function(...) {
  invisible(solrium::solr_connect(url = "http://services.itis.gov"))
  solrium::solr_highlight(...)
}