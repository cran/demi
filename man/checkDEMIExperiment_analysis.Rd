\name{checkDEMIExperiment_analysis}
\alias{checkDEMIExperiment_analysis}
\title{Checks if the \code{analysis} is correct}
\usage{
  checkDEMIExperiment_analysis(analysis)
}
\arguments{
  \item{analysis}{A \code{character}.}
}
\value{
  Returns NULL if \code{analysis} is ok, else returns an
  error message.
}
\description{
  Checks if the \code{analysis} is correct for DEMI
  analysis. It can be either 'gene', 'transcript', 'exon'
  or 'genome'. It is used internally in DEMI analysis.
}
\author{
  Sten Ilmjarv
}

