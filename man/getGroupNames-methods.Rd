\docType{methods}
\name{getGroupNames}
\alias{getGroupNames}
\alias{getGroupNames,DEMIGroup-method}
\title{Returns the \code{groupNames} parameter}
\arguments{
  \item{object}{A DEMIGroup object.}
}
\value{
  Returns the \code{groupNames} parameter of the
  \code{DEMIGroup} object that is a \code{character}.
}
\description{
  Returns the \code{groupNames} parameter of the
  \code{DEMIGroup} object. It is a \code{charater} that
  represent the custom group names. The \code{groupNames}
  parameter is only stored when the user defines his/her
  own clusters.
}
\examples{
\dontrun{

# To use the example we need to download a subset of CEL files from http://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE9819 published by Pradervand et al. 2008.

# Set the destination folder where the downloaded files fill be located
destfolder <- "demitest/testdata/"

# Download packed CEL files and change the names according to the feature they represent (for example to include UHR or BRAIN in them to denote the features).
# It is a good practice to name the files according to their features which allows easier identification of the files later.
download.file( "ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM247nnn/GSM247694/suppl/GSM247694.CEL.gz", destfile = paste( destfolder, "UHR01_GSM247694.CEL.gz", sep = "" ) )
download.file( "ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM247nnn/GSM247695/suppl/GSM247695.CEL.gz", destfile = paste( destfolder, "UHR02_GSM247695.CEL.gz", sep = "" ) )
download.file( "ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM247nnn/GSM247698/suppl/GSM247698.CEL.gz", destfile = paste( destfolder, "UHR03_GSM247698.CEL.gz", sep = "" ) )
download.file( "ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM247nnn/GSM247699/suppl/GSM247699.CEL.gz", destfile = paste( destfolder, "UHR04_GSM247699.CEL.gz", sep = "" ) )
download.file( "ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM247nnn/GSM247696/suppl/GSM247696.CEL.gz", destfile = paste( destfolder, "BRAIN01_GSM247696.CEL.gz", sep = "" ) )
download.file( "ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM247nnn/GSM247697/suppl/GSM247697.CEL.gz", destfile = paste( destfolder, "BRAIN02_GSM247697.CEL.gz", sep = "" ) )
download.file( "ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM247nnn/GSM247700/suppl/GSM247700.CEL.gz", destfile = paste( destfolder, "BRAIN03_GSM247700.CEL.gz", sep = "" ) )
download.file( "ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM247nnn/GSM247701/suppl/GSM247701.CEL.gz", destfile = paste( destfolder, "BRAIN04_GSM247701.CEL.gz", sep = "" ) )

# We need the gunzip function (located in the R.utils package) to unpack the gz files.
# Also we will remove the original unpacked files for we won't need them.
library( R.utils )
for( i in list.files( destfolder ) ) {
	gunzip( paste( destfolder, i, sep = "" ), remove = TRUE )
}

# Now we can continue the example of the function getGroupNames

# Set up an experiment
demiexp <- DEMIExperiment( analysis = 'gene', celpath = destfolder,
			experiment = 'myexperiment', organism = 'homo_sapiens' )

# Define a custom 'DEMIClust' object with user defined clusters
demiclust_custom <- DEMIClust( demiexp, cluster = list( customcluster = c(1190, 1998, 2007) ) )

# Calcuate differential expression
demidiff_custom <- DEMIDiff( demiclust_custom )

# Get group B name
getGroupNames( getGroup( demiclust_custom ) )
getGroupNames( getGroup( demidiff_custom ) )

}
}
\author{
  Sten Ilmjarv
}
\seealso{
  \code{DEMIGroup}
}

