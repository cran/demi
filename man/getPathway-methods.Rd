% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/AllGenerics.R, R/DEMIExperiment-methods.R
\docType{methods}
\name{getPathway}
\alias{getPathway}
\alias{getPathway,DEMIExperiment-method}
\title{Returns the \code{pathway} parameter representing functional annotation information}
\usage{
getPathway(object)

\S4method{getPathway}{DEMIExperiment}(object)
}
\arguments{
\item{object}{A \code{DEMIExperiment} object.}
}
\value{
Returns the \code{pathway} parameter of the \code{DEMIExperiment} object that is a \code{data.frame}.
}
\description{
Returns the \code{pathway} parameter of the \code{DEMIExperiment} object. It is a \code{data.frame} that stores
information about gene ontology categories.
}
\details{
The information about gene ontology categories is used when the user runs pathway analysis on DEMI differential
expression results with the function \code{DEMIPathway}.
}
\examples{
\dontrun{

# To use the example we need to download a subset of CEL files from
# http://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE9819 published
# by Pradervand et al. 2008.

# Set the destination folder where the downloaded files fill be located.
# It can be any folder of your choosing.
destfolder <- "demitest/testdata/"

# Download packed CEL files and change the names according to the feature
# they represent (for example to include UHR or BRAIN in them to denote the
# features).
# It is good practice to name the files according to their features which
# allows easier identification of the files later.

ftpaddress <- "ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM247nnn"
download.file( paste( ftpaddress, "GSM247694/suppl/GSM247694.CEL.gz", sep = "/" ),
		destfile = paste( destfolder, "UHR01_GSM247694.CEL.gz", sep = "" ) )
download.file( paste( ftpaddress, "GSM247695/suppl/GSM247695.CEL.gz", sep = "/" ),
		destfile = paste( destfolder, "UHR02_GSM247695.CEL.gz", sep = "" ) )
download.file( paste( ftpaddress, "GSM247698/suppl/GSM247698.CEL.gz", sep = "/" ),
		destfile = paste( destfolder, "UHR03_GSM247698.CEL.gz", sep = "" ) )
download.file( paste( ftpaddress, "GSM247699/suppl/GSM247699.CEL.gz", sep = "/" ),
		destfile = paste( destfolder, "UHR04_GSM247699.CEL.gz", sep = "" ) )
download.file( paste( ftpaddress, "GSM247696/suppl/GSM247696.CEL.gz", sep = "/" ),
		destfile = paste( destfolder, "BRAIN01_GSM247696.CEL.gz", sep = "" ) )
download.file( paste( ftpaddress, "GSM247697/suppl/GSM247697.CEL.gz", sep = "/" ),
		destfile = paste( destfolder, "BRAIN02_GSM247697.CEL.gz", sep = "" ) )
download.file( paste( ftpaddress, "GSM247700/suppl/GSM247700.CEL.gz", sep = "/" ),
		destfile = paste( destfolder, "BRAIN03_GSM247700.CEL.gz", sep = "" ) )
download.file( paste( ftpaddress, "GSM247701/suppl/GSM247701.CEL.gz", sep = "/" ),
		destfile = paste( destfolder, "BRAIN04_GSM247701.CEL.gz", sep = "" ) )

# We need the gunzip function (located in the R.utils package) to unpack the gz files.
# Also we will remove the original unpacked files for we won't need them.
library( R.utils )
for( i in list.files( destfolder ) ) {
	gunzip( paste( destfolder, i, sep = "" ), remove = TRUE )
}

# Now we can continue the example of the function getPathway. Note that pathway can only
# be retrieved if the analysis is set to gene or transcript.

# Set up an experiment
demiexp <- DEMIExperiment( analysis = 'gene', celpath = destfolder,
			experiment = 'myexperiment', organism = 'homo_sapiens' )

# Retrieve the 'pathway' parameter representing functional annotation information
head( getPathway( demiexp ) )

}
}
\author{
Sten Ilmjarv
}
\seealso{
\code{DEMIExperiment}, \code{DEMIPathway}
}

