addpolarstereographic <- function(map) {
    myproj <- "+proj=stere +lat_ts=60 +lat_0=90 +lon_0=0 +a=6371000 +b=6371000 +units=km"
    library(proj4)
    ucs <- project(list(lon=map$lon,lat=map$lat),myproj)
    detach(package:proj4)
    map$x <- ucs$x
    map$y <- ucs$y

    return(map)
}
