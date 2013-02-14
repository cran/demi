\docType{methods}
\name{loadCel}
\alias{loadCel}
\alias{loadCel,DEMIExperiment-method}
\title{Loads the raw expression matrix into a \code{DEMIExperiment} object}
\arguments{
  \item{object}{A \code{DEMIExperiment} object.}
}
\value{
  Returns a \code{DEMIExperiment} object updated with a
  \code{DEMICel} object attached to the slot
  \code{exprsData} that contains the raw expression matrix
  loaded from the CEL files.
}
\description{
  The function \code{loadCel} loads the raw expression
  matrix from CEL files into a \code{DEMIExperiment}
  object. It is used internally in DEMI analysis.
}
\author{
  Sten Ilmjarv
}
\seealso{
  \code{DEMIExperiment}, \code{DEMICel}
}

