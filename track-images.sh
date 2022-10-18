#!/bin/bash
#
# tracks images in batches of 25 
#

preston ls\
 | preston dwc-stream\
 | grep URI\
 | jq --raw-output '.["http://rs.tdwg.org/ac/terms/accessURI"], .["http://rs.tdwg.org/ac/terms/thumbnailAccessURI"], .["http://rs.tdwg.org/ac/terms/goodQualityAccessURI"]'\
 | xargs -L25 preston track 
