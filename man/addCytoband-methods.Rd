% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/cytoband-methods.R
\docType{methods}
\name{addCytoband}
\alias{addCytoband}
\title{Add karyotype information to DEMI differential expression results}
\usage{
addCytoband(result, cyto)
}
\arguments{
\item{result}{A \code{data.frame}. A 'genome' analysis genome section that contains chromosome name,
region start and region end coordinates.}

\item{cyto}{A \code{data.frame}. A \code{data.frame} describing karyotype information of the organism
used in the analysis.}
}
\value{
A \code{data.frame} where karyotype information has been added to the input 'result' table.
}
\description{
The function \code{addCytoband} adds karyotype information to the results of DEMI differential
expression 'genome' analysis. It is used internally in DEMI analysis.
}
\author{
Sten Ilmjarv
}
\seealso{
\code{\link{findCytoband}} which this function wraps
}

