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

data123 <- st_read('pm10PE.shp')

grid <- st_read('grid_4states.shp')

#plot(data)

# Modify the data and rasterize the grid

datap <- st_as_sf(data123)

#head(datap)

grid.raster <- raster(grid)

datap2 <- datap[ ! st_is_empty( datap ) , ]

#plot(datap2)

data.sp <- sf:::as_Spatial(datap2)

# Set up the KDE and Mask it to the grid

kde.output2 <- kernelUD(data.sp, h="href", grid = 1000)

#plot(kde.output2)

kde2 <- raster(kde.output2)

projection(kde2) <- CRS("+init=EPSG:4326")

#plot(kde2)

masked_kde2 <- mask(kde2, grid)

#plot(masked_kde2)

# Transfer the raster to polygons and save them as shapefiles

poly = rasterToPolygons(masked_kde2)

writeRaster(masked_kde2, 'pm10kde.shp', overwrite=TRUE)

names(poly)

cols = rev(terrain.colors(255))

spplot(poly, "ud", col.regions=cols, lwd=0)

raster::shapefile(poly, "poly.shp")

createSPComment(poly, which = NULL,overwrite = TRUE)
