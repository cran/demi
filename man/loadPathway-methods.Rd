\docType{methods}
\name{loadPathway}
\alias{loadPathway}
\alias{loadPathway,DEMIExperiment,environment-method}
\title{Loads the pathway information specified by the \code{DEMIExperiment} object}
\arguments{
  \item{object}{A \code{DEMIExperiment} object.}

  \item{pkg}{An \code{environment}. Specifies the
  environment where to load the data from.}
}
\value{
  Returns a \code{data.frame} with pathway information.
}
\description{
  the function \code{loadPathway} loads the pathway
  information for the specified \code{DEMIExperiment}
  object. It is used internally in DEMI analysis.
}
\author{
  Sten Ilmjarv
}
\seealso{
  \code{DEMIExperiment}, \code{environment}
}

