# Make maps for Garmin devices

This git is what I use to make maps for my Garmin devices.

To make your own maps you need to:

1. Make sure your Linux installation has all the required dependencies. (See below.)
1. Clone this git.
1. Download the latest version of mkgmap and splitter from the [mkgmap](https://www.mkgmap.org.uk/) homepage.
1. Run make.sh to download some other stuff needed and create some folders.
1. Download the osm.pbf file you want to make a map from on the [Geofabric](https://download.geofabrik.de/index.html) website.

When all this is done you can make the maps.

1. Run "split-map" to use the splitter to make smaller files from your main file.
1. Run "make-map" to make the map from the files above.

When this is done you have a file "gmapsupp.img" in the output-map folder that you can copy into your Garmin device.

## Prerequisites (dependencies)

You need to have a version of java >= 1.8 on computer. And unzip.

## Command line options

There are not many options you can change from the command line. The only place changes are allowed is when running "split-map" so you can choose
1) what .pbf file you want to work on if you have several. (By default the largest file is chosen.)
1) specify a polygon file if you only want to make a map from a subset of the .pbf file.

```
PBF=norway.osm.pbf POLY=no-se.poly ./split-map
```