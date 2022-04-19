#' Svensk text
#'
#' This package contains Swedish text data formatted
#' to be convenient for text analysis.
#'
#' The text repository can be found at
#' \href{https://github.com/peterdalle/svensktext}.
#'
#' @docType package
#' @name svensktext
NULL


.onAttach <- function(...) {
	packageStartupMessage("svensktext is beta software and may change.")
}
