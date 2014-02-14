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
    plotmap(mymap,proj="latlon",type="line")
}

\arguments{
    \item{mymap}{An object containing land contours. Preferably as read
    from e.g. GSHHS using \link{getmapdata}}
    \item{proj}{Select the projection to use}
    \item{type}{Select whether line or polygon plotting should be used}
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
}

\keyword{
}
