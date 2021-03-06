% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/diffexp-methods.R
\docType{methods}
\name{calcHypergeoProb}
\alias{calcHypergeoProb}
\title{Calculates hypergeometric probability in DEMI analysis}
\usage{
calcHypergeoProb(x)
}
\arguments{
\item{x}{A \code{data.frame}.}
}
\value{
A \code{numeric} that represents a the hypergeometric probability p-value.
}
\description{
Calculates hypergeometric probability in DEMI analysis. It is universal for all
DEMI analysis except for 'exon' analysis. It is used internally in DEMI analysis.
}
\author{
Sten Ilmjarv
}

