% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/DEMIExperiment-methods.R
\name{checkDEMIExperiment_normalization}
\alias{checkDEMIExperiment_normalization}
\title{Checks if \code{normormalization} is correct}
\usage{
checkDEMIExperiment_normalization(normalization)
}
\arguments{
\item{normalization}{A \code{function}.}
}
\value{
Returns NULL if \code{normalization} is ok, else returns an error message.
}
\description{
Checks if \code{normalization} is correct for the DEMI analysis. 'normalization' stands for
normalization method or 'norm.method' in the \code{DEMIExperiment} object. It is used internally
in DEMI analysis.
}
\author{
Sten Ilmjarv
}
\seealso{
\code{DEMIExperiment}
}

