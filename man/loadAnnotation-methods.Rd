\docType{methods}
\name{loadAnnotation}
\alias{loadAnnotation}
\alias{loadAnnotation,DEMIExperiment,environment-method}
\title{Loads the annotation information specified by the \code{DEMIExperiment} object}
\arguments{
  \item{object}{A \code{DEMIExperiment} object.}

  \item{pkg}{An \code{environment}. Specifies the
  environment where to load the data from.}
}
\value{
  Returns a \code{data.frame} with annotation information.
}
\description{
  The function \code{loadAnnotation} loads the annotation
  information for the specified \code{DEMIExperiment}
  object. It is used internally in DEMI analysis.
}
\author{
  Sten Ilmjarv
}
\seealso{
  \code{DEMIExperiment}, \code{environment}
}

