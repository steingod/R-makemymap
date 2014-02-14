plotmap <- function(map,proj="latlon",type="line") {
    if (proj=="latlon") {
        if (type=="polygon") {
            ggplot(map,aes(x=lon,y=lat,group=group))+geom_polygon()+coord_fixed()
        } else {
            ggplot(map,aes(x=lon,y=lat,group=group))+geom_path()+coord_fixed()
        }
    } else {
        if (type=="polygon") {
            ggplot(map,aes(x=x,y=y,group=group))+geom_polygon()+coord_fixed()
        } else {
            ggplot(map,aes(x=x,y=y,group=group))+geom_path()+coord_fixed()
        }
    }
}