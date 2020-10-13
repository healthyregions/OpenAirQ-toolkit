#Filtering/Extracting four states NEI data for PM2.5

library(tidyverse)
library(sf)

#Read in data
pe1 <- read_csv("process_12345.csv")

states.abbr <- c("IL", "IN", "WI", "MI")

#Filter for states
fourstate.pe <- pe1 %>%
        filter(state %in% states.abbr)

#Find pollutant names for pm2.5
unique(fourstate.pe$`pollutant desc`)
pm25 <- c("PM2.5 Filterable",  "PM2.5 Primary (Filt + Cond)")

#Filter for pm2.5
fourstate.pm <- fourstate.pe %>%
        filter(`pollutant desc` %in% pm25)

fourstate.pm.final <- fourstate.pm[!duplicated(fourstate.pm$`eis facility id`),] #remove duplicates
fourstate.pm.final <- fourstate.pm.final[!is.na(fourstate.pm.final$`site latitude`),] #remove na coords 

#Turn into sf object
fourstate.pm.spatial <- st_as_sf(fourstate.pm.final, coords = c("site longitude", "site latitude"), crs = 4326)


fourstates <- st_read("FourStates")

tm_shape(fourstates) +
        tm_borders() +
        tm_shape(fourstate.pm.spatial) +
        tm_dots(size = 0.01)
