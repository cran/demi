#==============================================================================#
# DEMIGroup-methods.R:
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# initialize
# getIndexA
# getIndexB
# getGroupA
# getGroupB
# getGroupNames
#==============================================================================#

#------------------------------------------------------------------------------#
# DEMIGroup initialization:
#------------------------------------------------------------------------------#

#' Initializes the \code{DEMIGroup} object
#' 
#' Initializes the \code{DEMIGroup} object.
#' 
#' @param .Object A DEMIGroup object.
#' @param ... Additional arguments that may never be used.
#' @return Returns a 'DEMIGroup' object.
#' @author Sten Ilmjarv
"initialize.DEMIGroup" <-
		function( .Object, ... ) 
{
	.Object <- callNextMethod( .Object, ... );
	.Object;
}#initialize.DEMIGroup
setMethod( "initialize", "DEMIGroup", initialize.DEMIGroup );


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# DEMIGroup get functions:
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

#' @rdname getIndexA-methods
#' @aliases getIndexA,DEMIGroup-method
setMethod( "getIndexA", signature( object = "DEMIGroup" ),
		function( object ) object@indexA
)#getIndexA

#' @rdname getIndexB-methods
#' @aliases getIndexB,DEMIGroup-method
setMethod( "getIndexB", signature( object = "DEMIGroup" ),
		function( object ) object@indexB
)#getindexB

#' @rdname getGroupA-methods
#' @aliases getGroupA,DEMIGroup-method
setMethod( "getGroupA", signature( object = "DEMIGroup" ),
		function( object ) object@groupA
)#getgroupA

#' @rdname getGroupB-methods
#' @aliases getGroupB,DEMIGroup-method
setMethod( "getGroupB", signature( object = "DEMIGroup" ),
		function( object ) object@groupB
)#getgroupB

#' @rdname getGroupNames-methods
#' @aliases getGroupNames,DEMIGroup-method
setMethod( "getGroupNames", signature( object = "DEMIGroup" ),
		function( object ) object@groupNames
)#getGroupNames
