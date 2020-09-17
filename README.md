# OpenAirQ-toolkit
Analytic Toolkit Bookdown for OpenAirQ Projectes

## General Modeling Guidance
1 - Intro to R, survey of basic features, link to resources and tools
2 - Intro to different types of spatial data (raster, vector - point, line, area), temporal)
3 - Visualization: Exploring and Mapping Weather Variables
4 - Interpolation: Move from point sensors to surfaces
5 - Model: Extend interpolation with diff models, summarize the issues associated
6 - Translate: Aggregating to different scales (ie. raster air quality model at 1km to census tracts)
7 - Linking neighborhood factors for additional analysis

## Appendix: Data Types
Each of the following variables needs to have a tutorial that shows users how to access, extract, model, and then aggregate data (in R) to the format needed. We can tag each tutorial based on key factors.

Name | Source(s) | Write | Edit | Raw Script | Final Tutorial
--- | --- | --- | --- | --- | ---  
PM 2.5 | EPA Sensors (link) (data) | |  | [PM 2.5 Interpoliation](https://github.com/GeoDaCenter/OpenAirQ-phase1/tree/master/data-workflows/sensors/epa-sensors/PM25) | 
Aerosol Optical Depth | EPA Sensors (link) (data) |  |  | [AOD Processing](https://github.com/GeoDaCenter/OpenAirQ-phase1/tree/master/data-workflows/aod-MAIAC) | 
Temperature | NOAA (link) (data) | | | [Temperature Interpolation](https://github.com/GeoDaCenter/OpenAirQ-phase1/tree/master/data-workflows/covariates/meteorological-data/Temperature)
Point Emission Data | National Emissions Inventory (link) (data) |  | | [Distance to Point Emissions](https://github.com/GeoDaCenter/OpenAirQ-phase1/tree/master/data-workflows/covariates/point-emissions) |  
Road Emissions | Open Street Map (link) (data) |  |  | [Road Length by Area](https://github.com/GeoDaCenter/OpenAirQ-phase1/tree/master/data-workflows/covariates/road-emissions) | 
NDVI | MODIS (link) (data) |  |  | [NDVI Aggregation](https://github.com/GeoDaCenter/OpenAirQ-phase1/tree/master/data-workflows/covariates/ndvi-data) | 
Elevation | National Land Elevation Model (link) (data) |  |  |  | 
Land Use | USGS (link) (data) |   || [Landuse Processing](https://github.com/GeoDaCenter/OpenAirQ-phase1/blob/master/data-workflows/covariates/land-use/processLU.R) | 
Land Cover |  |  |  |  |   
AOT sensors? |  |  |  |  |   
Aircasting sensors? |  |  |  |  |   






