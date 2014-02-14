defprodtiles <- function() {

    prodtiles <- data.frame(
                            wrus=rbind(1465,2395,-2915,-740),
                            npea=rbind(-335,2395,-740,310),
                            newf=rbind(-4145,-3335,-3770,-740),
                            sogr=rbind(-3335,-2135,-3770,-740),
                            ns=rbind(-335,1465,-4340,-2540),
                            nr=rbind(-335,1465,-2540,-740),
                            gr=rbind(-2135,-335,-2540,-740),
                            at=rbind(-2135,-335,-4340,-2540)
                            ) 
    rownames(prodtiles) <- c("xmin","xmax","ymin","ymax")

    return(prodtiles)
}
