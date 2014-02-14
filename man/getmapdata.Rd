\name{getmapdata }

\alias{getmapdata }

\title{
    Read GSHHS map data for specified region
}

\description{
    This function is a wrapper around \link{Rgshhs} in
    \link{maptools}. It reads GSHHS data for a specified bounding box
    (geographical positions) and makes them available to create maps.
    Further projection of data is done using \link{proj4}.

    Remember that the GSHHS contains map data in different resolution as
    well as nation borders and rivers. This function reads maps only.

    GSHHS files have filenames of the form 'gshhs_X.b', where X is one of
    the letters c, l, i, h, and f, corresponding to increasing resolution
    (and file size).

    The file gshhs_c.b contains the crudest resolution which is suitable
    for global or large regional maps.

    Some issues concerning reading large scale GSHHS data have been
    identified. Until the fix is available, this dataset should be used
    for high resolution maps and avoided for global maps. For those, use
    e.g. \link{wrld_simpl} of \link{maptools} or the \link{rworldmap} package.
}

\usage{
    getmapdata(fn,xlim,ylim,..)
}

\arguments{
    \item{fn}{Filename to read data from.}
    \item{xlim}{Longitude bounds, see \link{Rgshhs} for details}
    \item{ylim}{Latitude bounds, see \link{Rgshhs} for details}
    \item{...}{Additional arguments to \link{Rgshhs}}
}

\value{
}

\seealso{
}

\author{
    Øystein Godøy (\email{o.godoy@met.no})
}

\examples{
}

\keyword{
}
