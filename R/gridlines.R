# Create grid lines in map projected datasets.
#gridlines <- function(proj=NULL) {
function(proj="+proj=stere +lat_ts=60 +lat_0=90 +lon_0=0 +a=6371000 +b=6371000 +units=km") {

    mylat <- seq(50,90,5)
    mylon <- c(seq(-60,60,5),NA)
    latg <- expand.grid(lon=mylon,lat=mylat)

    mylat <- c(seq(50,90,5),NA)
    mylon <- seq(-60,60,5)
    long <- expand.grid(lat=mylat,lon=mylon)

    if (! is.null(proj)) {
        latg <- addmapproj(latg,proj)
        long <- addmapproj(long,proj)
    }

    return(list(latg=latg,long=long))
}
