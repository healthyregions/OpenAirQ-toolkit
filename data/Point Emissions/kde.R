# Load the packages

library(sf)
library(tmap)
library(leaflet)
library(raster) # Needed for grid and kernel density surface
library(adehabitatHR) # Needed for kernel density surface
library(spatialEco)
library(rgdal)
library(sp)
library(arc)
library(readr)
library(rgeos)

# Load the data

data <- st_read('pe.shp')

grid <- st_read('grid_4states.shp')

#plot(data)

# Modify the data and rasterize the grid

datap <- st_as_sf(data)

#head(datap)

grid.raster <- raster(grid)

datap2 <- datap[ ! st_is_empty( datap ) , ]

#plot(datap2)

data.sp <- sf:::as_Spatial(datap2)

# Set up the KDE and Mask it to the grid

kde.output <- kernelUD(data.sp, h="href", grid = 1000)

#plot(kde.output)

kde <- raster(kde.output)

projection(kde) <- CRS("+init=EPSG:4326")

#plot(kde)

masked_kde <- mask(kde, grid)

#plot(masked_kde)

# Transfer the raster to polygons and save them as shapefiles

poly1 = rasterToPolygons(masked_kde)

createSPComment(poly1, which = NULL,overwrite = TRUE)

raster::shapefile(poly,'pm25kde.shp')
