# Create grid lines in map projected datasets.
#gridlines <- function(proj=NULL) {
function(proj="+proj=stere +lat_ts=60 +lat_0=90 +lon_0=0 +a=6371000
         +b=6371000 +units=km",latr=c(40,90),lonr=c(-180,180),dl1=10,dl2=5) {

    mylat <- seq(latr[1],latr[2],dl1)
    mylon <- c(seq(lonr[1],lonr[2],dl2),NA)
    latg <- expand.grid(lon=mylon,lat=mylat)

    mylat <- c(seq(latr[1],latr[2],dl1),NA)
    mylon <- seq(lonr[1],lonr[2],dl1)
    long <- expand.grid(lat=mylat,lon=mylon)

    if (! is.null(proj)) {
        latg <- addmapproj(latg,proj)
        long <- addmapproj(long,proj)
    }

    return(list(latg=latg,long=long))
}
