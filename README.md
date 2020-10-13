# OpenAirQ-toolkit
Analytic Toolkit Bookdown for OpenAirQ Projectes

## Tutorial Goals 

 Title | Write | Edit | Raw Script | Final Tutorial 
 --- | --- | --- | --- | --- | 
Intro to R, Survey Basics| TBD | | | 
Wrangling + Mapping Vector Data (Temperature, Roads) | Lorenz | | |  
Wrangling + Mapping Raster Data (NDVI, Land Cover) | Isaac | | |  
Dynamic Sensor Querying (Pollutants, EPA) | Lorenz |  |[Wrangling EPA Sensor Data](https://github.com/GeoDaCenter/OpenAirQ-toolkit/blob/master/Documentation/01-weather.Rmd) *add some of the melt instructions from NOAA tutorial| 
Moving from point sensors to surfaces (KDE of Facilities) | Isaac | | |  
Extend interpolation with diff models (EPA, AOT) | Lorenz | | *part of Lorenz's 01 module, integrate Isaac's as well |  
Aggregating to different scales (AOD to tract)  | Isaac | | |  
Linking neighborhood factors (tidycensus) | TBD | | |  

## Appendix: Data Types
Each of the following variables needs to have a tutorial that shows users how to access, extract, model, and then aggregate data (in R) to the format needed. We can tag each tutorial based on key factors. Need to introduce this as essentially all the major variables that are required for air quality modeling based on existing literature surveys (in mixed hybrid approach).

Name | Source(s) | Write | Edit | Raw Script | Final Tutorial
--- | --- | --- | --- | --- | ---  
PM 2.5 | EPA Sensors (link) (data) | Yuming |  | [PM 2.5 Interpolation](https://github.com/GeoDaCenter/OpenAirQ-phase1/tree/master/data-workflows/sensors/epa-sensors/PM25) | 
Aerosol Optical Depth | EPA Sensors (link) (data) |  |  | [AOD Processing](https://github.com/GeoDaCenter/OpenAirQ-phase1/tree/master/data-workflows/aod-MAIAC) | 
Temperature | NOAA (link) (data) | | | [Temperature Interpolation](https://github.com/GeoDaCenter/OpenAirQ-phase1/tree/master/data-workflows/covariates/meteorological-data/Temperature)
Point Emission Data | National Emissions Inventory (link) (data) | [Jizhou](https://github.com/GeoDaCenter/OpenAirQ-toolkit/blob/master/Documentation/Tutorial_data_types/Point_Emission_Data/Point%20Emission%20Data.Rmd) | | [Distance to Point Emissions](https://github.com/GeoDaCenter/OpenAirQ-phase1/tree/master/data-workflows/covariates/point-emissions) |  
Road Emissions | Open Street Map (link) (data) |  |  | [Road Length by Area](https://github.com/GeoDaCenter/OpenAirQ-phase1/tree/master/data-workflows/covariates/road-emissions) | 
NDVI | MODIS (link) (data) |  |  | [NDVI Aggregation](https://github.com/GeoDaCenter/OpenAirQ-phase1/tree/master/data-workflows/covariates/ndvi-data) | 
Elevation | National Land Elevation Model (link) (data) |  |  |  | 
Land Use | USGS (link) (data) |   || [Landuse Processing](https://github.com/GeoDaCenter/OpenAirQ-phase1/blob/master/data-workflows/covariates/land-use/processLU.R) | 
Land Cover |  |  |  |  |   
AOT sensors? |  |  |  |  |   
Aircasting sensors? |  |  |  |  |   






