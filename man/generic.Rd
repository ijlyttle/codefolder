% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fold.R
\name{generic}
\alias{generic}
\alias{bookdown}
\alias{distill}
\title{Enable code-folding}
\usage{
generic(init = c("show", "hide"), query, style)

bookdown(init = c("show", "hide"), query = "pre.sourceCode",
  style = "position: absolute; right: 8\%; z-index: 200")

distill(init = c("show", "hide"), query = "d-code", style = "")
}
\arguments{
\item{init}{\code{character} indictates to \code{"show"} or \code{"hide"} code blocks
at initialization.}

\item{query}{\code{character} CSS-selector string for code blocks.}

\item{style}{\code{character} CSS style for the button.}
}
\value{
\code{htmltools::tagList}
}
\description{
Enable code-folding
}
