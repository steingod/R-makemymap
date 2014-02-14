plotmap <- function(map,proj="geographical",type="line") {
    if (proj=="geographical") {
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
