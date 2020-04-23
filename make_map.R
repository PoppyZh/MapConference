install.packages("leaflet")
library(leaflet)



m <- leaflet()
m <- addTiles(m)
m <- addMarkers(m, lng=CONF$long, lat=CONF$lat, label = CONF$Paper, 
                labelOptions = labelOptions(noHide = F, textsize = "15px"))
m%>% addProviderTiles(providers$Stamen.Toner)

library(htmlwidgets)
saveWidget(m, 'mapConf.html', selfcontained = FALSE)
