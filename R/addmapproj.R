# Add a map projection to a lat/lon value pair.
addmapproj <- function(map,myproj="+proj=stere +lat_ts=60 +lat_0=90 +lon_0=0 +a=6371000 +b=6371000 +units=km") {
    require(proj4)
    ucs <- project(list(lon=map$lon,lat=map$lat),myproj)
    detach(package:proj4)
    map$x <- ucs$x
    map$y <- ucs$y

    return(map)
}

metnopolstere <- "+proj=stere +lat_ts=60 +lat_0=90 +lon_0=0 +a=6371000 +b=6371000 +units=km"
# EPSG 3408 is a Lambert Azimuthal Equal-Area projection
# This is the same as the NSIDC EASE grid North
epsg3408 <- "+proj=laea +lat_0=90 +lon_0=0 +a=6371228.0 +units=km"
# EPSG 32661 is a Stereographic projection
epsg32661 <- "+proj=stere +lat_0=90 +lat_ts=90 +lon_0=0 +k=0.994 +x_0=2000000 +y_0=2000000 +ellps=WGS84 +datum=WGS84 +units=m +no_defs"
