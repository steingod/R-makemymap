# Must do something with longitude conversion. Need to take group into
# account...
# Using code published by Karl Ove Hufthammar...
getmapdata <- function(fn,xl=c(-80,80),yl=c(0,90),shift=T,level=1,no.clip=F,...) {

    #library(maptools)
    map1 = try(Rgshhs(fn, xlim = xl, ylim = yl,shift = shift,
                    level = level, no.clip = no.clip)$SP)
   
    # Now try fetching the same area using positive coordinates.
    xl.west = (xl + 360)%%360
    if (xl.west[2] < xl.west[1])
        xl.west[2] = 360
    map2 = Rgshhs(fn, xlim = xl.west, ylim = yl, shift = shift,
            level = level, no.clip = no.clip)$SP
   
    # If there where no polygons with negative coordinates, just
    # use the positive coordinates.
    if (class(map1) == "try-error")
        map.union = map2 
    else { # Else merge the two maps into one.

            # First store the original polygon IDs in data frames.
            df1 = data.frame(polyID = row.names(map1))
            row.names(df1) = df1$polyID
            map1.spdf = SpatialPolygonsDataFrame(map1, df1)

            df2 = data.frame(polyID = row.names(map2))
            row.names(df2) = df2$polyID
            map2.spdf = SpatialPolygonsDataFrame(map2, df2)

            # Generate new polygon IDs to avoid duplicate IDs when
            # rbinding the two maps.
            row.names(map1.spdf) = as.character(seq_along(map1@polygons))
            row.names(map2.spdf) = as.character(length(map1@polygons) +
                                                seq_along(map2@polygons))
            map.merged = rbind(map1.spdf, map2.spdf)

            # Finally, combine all the polygons, using the
            # original polyon IDs.
            map.union = unionSpatialPolygons(map.merged, map.merged$polyID)
        }
    #map.union 
    #tmp <- Rgshhs(fn,shift=T,...)

    #mymap <- fortify(tmp$SP)
    mymap <- fortify(map.union)
    colnames(mymap)[1] <- "lon"

    #mymap <- within(mymap, lon[lon>190.5] <- lon[lon>190.5]-360)

    return(mymap)
}
