plotmap <- function(map,projected=FALSE,polygon=FALSE,...) {
    library(ggplot2)
    if (projected==FALSE) {
        if (polygon==TRUE) {
            ggplot(map,aes(x=lon,y=lat,group=group))+geom_polygon(...)+coord_fixed()
        } else {
            ggplot(map,aes(x=lon,y=lat,group=group))+geom_path(...)+coord_fixed()
        }
    } else {
        if (polygon==TRUE) {
            ggplot(map,aes(x=x,y=y,group=group))+geom_polygon(...)+coord_fixed()
        } else {
            ggplot(map,aes(x=x,y=y,group=group))+geom_path(...)+coord_fixed()
        }
    }
}
