\docType{methods}
\name{celMatrixNormalize}
\alias{celMatrixNormalize}
\alias{celMatrixNormalize,DEMIExperiment,function-method}
\title{Initializes the normalization of the raw expression matrix}
\arguments{
  \item{object}{A \code{DEMIExperiment} object. It stores
  the raw expression matrix.}

  \item{fun}{A \code{function}. The function used to
  normalize the raw expression matrix.}
}
\value{
  Returns a \code{DEMIExperiment} object updated with
  normalized expression matrix.
}
\description{
  The function \code{celMatrixNormalize} initializes the
  normalization of the raw expression matrix in the
  \code{DEMIExperiment} object. It is used internally in
  DEMI analysis.
}
\author{
  Sten Ilmjarv
}

