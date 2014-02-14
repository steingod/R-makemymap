# Must do something with longitude conversion. Need to take group into
# account...
getmapdata <- function(fn,...) {

    library(maptools)

    tmp <- Rgshhs(fn,shift=T,...)
    mymap <- fortify(tmp$SP)
    colnames(mymap)[1] <- "lon"

    #mymap <- within(mymap, lon[lon>190.5] <- lon[lon>190.5]-360)

    return(mymap)
}
