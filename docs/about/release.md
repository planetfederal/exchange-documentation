hide_toc: true

![EXCHANGE](../img/exchange.png) Boundless Exchange v1.0.0 Release Notes
=======================================
29 July, 2016

Boundless Exchange is a web-based platform for your content, built for your enterprise. It facilitates the creation, sharing, and collaborative use of geospatial data. For power users, advanced editing capabilities for versioned workflows via the web browser are included. Boundless Exchange is powered by [GeoNode](http://geonode.org/), [GeoGig](http://geogig.org/), [OpenLayers](http://openlayers.org/), [PostGIS](http://postgis.net/), [GeoServer](http://geoserver.org/) and [pycsw](http://pycsw.org).

#### Additions
+ Customize your Exchange: You will have the ability to customize the look and feel through simple configuration panel, giving you the ability to tailor Exchange to your organization’s own branding and styling.
+ Search and Retrieve ALL Geospatial Services: Equipped with a powerful services registry based on Harvard’s Hypermap open source project, you can now quickly find and connect to any geospatial data catalog, anytime and anywhere.
+ Catalogue Service (CSW) Transaction Support: Users will now have the ability to add to the catalogue service using basic authentication.
+ Support to store configuration settings in the environment via variables (Twelve Factor App).
+ Upload Custom Thumbnails: You now have the ability to upload custom thumbnails for layers and maps to meet your organization's needs.
+ S3 Storage Support: Administrators will now be able to store Django static and media files in a Amazon S3 bucket.
+ Powerful Basemap Integration: You can now bring powerful and beautiful Mapbox, CartoDB, Stamen, Thunderforest, and a variety of other OpenStreetMap basemaps to Exchange.
+ Additional Authentication Modules: Exchange now supports LDAP and WebGate authentication.
+ Upgrade to long-term support (LTS) release of Django (1.8.7): This will allow for an end of extended support until at least April 2018.
+ GeoGig Storage in Relational Database: GeoGig the versioned datastore we make available within exchange now supports storage in PostgreSQL.

#### Platform Support
+ CentOS/RHEL 6
+ CentOS/RHEL 7
