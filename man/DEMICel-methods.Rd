% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/Constructors.R
\docType{methods}
\name{DEMICel}
\alias{DEMICel}
\title{Creates a \code{DEMICel} object}
\usage{
DEMICel(celMatrix = matrix(), normMatrix = matrix())
}
\arguments{
\item{celMatrix}{A \code{matrix}. The raw expression matrix.}

\item{normMatrix}{A \code{matrix}. The normalized expression matrix.}
}
\value{
A \code{DEMICel} object that holds the raw and normalized expression
		   matrices.
}
\description{
A \code{DEMICel} holds the raw and normalized expression matrices. It is used
internally in DEMI analysis.
}
\details{
Both expression matrices store the expression values in their columns
and the column name represents the original CEL file name. The row names
represent probe ID's which makes it easy to retrieve specific expression
data for specific probes.
}
\author{
Sten Ilmjarv
}

