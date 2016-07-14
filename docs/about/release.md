hide_toc: true

![EXCHANGE](../img/exchange.png) Boundless Exchange v1.0.0 Release Notes
=======================================
29 July, 2016

Boundless Exchange is a web-based platform for your content, built for your enterprise. It facilitates the creation, sharing, and collaborative use of geospatial data. For power users, advanced editing capabilities for versioned workflows via the web browser are included. Boundless Exchange is powered by [GeoNode](http://geonode.org/), [GeoGig](http://geogig.org/), [OpenLayers](http://openlayers.org/), [PostGIS](http://postgis.net/) and [GeoServer](http://geoserver.org/).

#### Additions
1. Adjusted Templates
    + New logos and color scheme
    + Upload Document/Layer and Create Basemap on Main Page
    + Default CRS displays in remote services page
2. Custom Skinning
    + Banner Image
    + Hyperlink Color
    + Icon Image
    + Logo Image
    + Navigation Bar Color
    + Site Name
    + Tag Line
3. Registry (HHypermap) integration
4. Registry layer display in MapLoom
5. PYCSW transaction support
6. Support to store configuration in the environment via variables (Twelve Factor App)
7. Custom thumbnails for layers and maps
8. S3 Storage support for static and media files
9. Additional Base Map support
    + [MapBox](https://www.mapbox.com/) (Requires Access Token)
    + [Carto](https://carto.com/)
    + [Stamen](http://stamen.com/)
    + [Thunderforest](http://www.thunderforest.com/)
    + Alternate OpenStreetMap versions
10. LDAP Support
11. WebGate authentication module

#### Dependencies
+ Python 2.7.11
+ Java 1.8.0
+ GDAL 2.1.0
+ GEOS 3.5.0
+ PROJ 4.8.0
+ GeoServer 2.9
   + GeoNode Extension
   + GeoGig Extension
+ ElasticSearch 1.7.5
+ RabbitMQ Server 3.6.1
+ PostgreSQL 9.5.3
+ PostGIS 2.2.2

#### Removals
+ None at this time

#### Changes
+ None at this time

#### Fixes
+ None at this time

#### Platform Support
+ CentOS/RHEL 6
+ CentOS/RHEL 7

#### Known Issues
+ None at this time
