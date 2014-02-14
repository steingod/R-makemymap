\name{ plotmap }

\alias{ plotmap }

\title{
    Plot a geographical map
}

\description{
    Plots a geographical map using \link{ggplot2}. Select between lines or
    polygon plotting.
}

\usage{
    plotmap(mymap,projected=FALSE,polygon=FALSE)
}

\arguments{
    \item{mymap}{An object containing land contours. Preferably as read
    from e.g. GSHHS using \link{getmapdata}}
    \item{projected}{Boolean indicating geographical or map projected plot}
    \item{polygon}{Boolean indicating whether line or filled continent should
    be used}
}

\value{
}

\seealso{
    \link{getmapdata}
}

\author{
    Øystein Godøy (\email{o.godoy@met.no})
}

\examples{
    # Plot projected map with polygons
    plotmap(tmp,type="line",projected=T,polygon=T,colour="black",fill="dark green")
    # Same as above, but truncate map
    plotmap(tmp,type="line",projected=T,polygon=T,colour="black",fill="dark green")
+coord_cartesian(xlim=c(-2500,2500),ylim=c(-4000,1000))
}

\keyword{
}
