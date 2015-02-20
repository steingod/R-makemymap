\name{addmapproj }

\alias{addmapproj }

\title{
    Add a map projection
}

\description{
    GSHHS map data are provided in a geographical grid. This function adds
    a map projection to the latitude/longitude version of the map.
    Currently only one map projection may be added and the user has to
    keep track of which this is themselves.
}

\usage{
    addmapproj(map,proj)
}

\arguments{
    \item{map}{A map object as returned by \link{getmapdata}}
    \item{proj}{A PROJ.4 specification of the requested map projection.
    See \link{proj} for details, prefined objects for ESPG:3408 and
    EPSG:32661 exist and can be used directly. Default units are km for
    both.} 
}

\value{
}

\seealso{
    \link{getmapdata}, \link{plotmapdata}
}

\author{
    Øystein Godøy (\email{o.godoy@met.no})
}

\examples{
    # Plot geographical data
    mymap <- getmapdata("gshhs_c.b",xlim=c(-20,40),ylim=c(40,80))
    plotmap(mymap)
    # Add polar stereographic data and plot
    mymap <- addmapproj(mymap,"+proj=stere +lat_ts=60 +lat_0=90 +lon_0=0 +a=6371000 +b=6371000 +units=km")
    plotmap(mymap,proj="projected")
}

\keyword{
}
