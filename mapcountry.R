## Map for CORDEX FPS
## https://www.sharpsightlabs.com/blog/map-oil-production-country-r/ 

library(rworldmap)
theCountries <- c("MOZ", "MWI", "ZAF","ZWE", "TZA", "KEN", "RWA", "BDI","NOR")
# These are the ISO3 names of the countries you'd like to plot in red
# https://unstats.un.org/unsd/tradekb/knowledgebase/country-code
partDF <- data.frame(country = theCountries,
                     CORDEX.FPS.southeast.Africa = rep("Partners",length(theCountries)))
# malDF is a data.frame with the ISO3 country names plus a variable to
# merge to the map data
fpsMap <- joinCountryData2Map(partDF, joinCode = "ISO3",
                              nameJoinColumn = "country")
# This will join your malDF data.frame to the country map data
mapCountryData(fpsMap, nameColumnToPlot="CORDEX.FPS.southeast.Africa", catMethod = "categorical",
               missingCountryCol = gray(.8))

