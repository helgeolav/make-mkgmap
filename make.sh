#!/bin/sh
echo Creating directories needed
mkdir output-splitter output-map

echo Downloading the support files we need, this can take some time
wget -N http://osm.thkukuk.de/data/bounds-latest.zip &
wget -N http://osm.thkukuk.de/data/sea-latest.zip &
wget -N http://download.geonames.org/export/dump/cities15000.zip &
