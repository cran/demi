\name{checkDEMIExperiment_pmsize}
\alias{checkDEMIExperiment_pmsize}
\title{Checks if \code{pmsize} is correct}
\usage{
  checkDEMIExperiment_pmsize(pmsize)
}
\arguments{
  \item{pmsize}{A \code{numeric}.}
}
\value{
  Returns NULL if \code{pmsize} is ok, else returns an
  error message.
}
\description{
  Checks if \code{pmsize} is correct for the DEMI analysis.
  The 'pmsize' denotes perfect match size meaning the size
  of continues perfect alignment between the probe and the
  target sequence. It is used internally in DEMI analysis.
}
\author{
  Sten Ilmjarv
}

