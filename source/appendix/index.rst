Appendix
========

The following is a CSW example that has been successfully added to Exchange in the past.

  .. code-block:: xml

    <csw:Transaction xmlns:csw="http://www.opengis.net/cat/csw/2.0.2" xmlns:ows="http://www.opengis.net/ows" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.opengis.net/cat/csw/2.0.2 http://schemas.opengis.net/csw/2.0.2/CSW-publication.xsd" service="CSW" version="2.0.2" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:dct="http://purl.org/dc/terms/" xmlns:registry="http://gis.harvard.edu/HHypermap/registry/0.1" >
      <csw:Insert>
        <csw:Record xmlns:registry="http://gis.harvard.edu/HHypermap/registry/0.1" >
          <dc:identifier>78deee94-abb0-4d55-a589-022c9aa8f83c</dc:identifier>
          <dc:title>American Bullfrog</dc:title>
          <dc:type>dataset</dc:type>
          <dc:format>OGC:WMS</dc:format>
          <dct:modified>2017-05-17</dct:modified>
          <dct:abstract>Jeremiah was a bullfrog</dct:abstract>
          <dc:creator>Boundless</dc:creator>
          <dc:source>https://mapstory.org/geoserver/geonode/wms</dc:source>
          <ows:BoundingBox crs="http://www.opengis.net/def/crs/EPSG/0/4326" dimensions="2">
          <ows:LowerCorner>-85.0 -180.0</ows20:LowerCorner>
          <ows:UpperCorner>85.0 180.0</ows20:UpperCorner>
          </ows:BoundingBox>
        </csw:Record>
        <csw:Record xmlns:registry="http://gis.harvard.edu/HHypermap/registry/0.1" >
          <dc:identifier>8db10886-327c-489c-ae6a-9f4aefaed96f</dc:identifier>
          <dc:title>District Public Schools</dc:title>
          <dc:creator>cdavis</dc:creator>
          <dc:type>dataset</dc:type>
          <dct:alternative>0</dct:alternative>
          <dct:modified>2017-05-16T01:00:03</dct:modified>
          <dc:format>OGC:WMS</dc:format>
          <registry:property name="category" value="Intelligence" />
          <dct:abstract>Provided by the Office of the Chief Technology Office </dct:abstract>
          <dc:source>http://maps2.dcgis.dc.gov/dcgis/services/DCGIS_APPS/CrimeMap/MapServer/WMSServer</dc:source>
          <ows:BoundingBox crs="http://www.opengis.net/def/crs/EPSG/0/4326" dimensions="2">
              <ows:UpperCorner>38.8269231595 -77.1006088171</ows:UpperCorner>
              <ows:LowerCorner>38.9845804134 -76.9198274506</ows:LowerCorner>
          </ows:BoundingBox>
        </csw:Record>
        <csw:Record xmlns:registry="http://gis.harvard.edu/HHypermap/registry/0.1" >
          <dc:identifier>71eb8337-7300-4527-a147-eb48e0c1a217</dc:identifier>
          <dc:title>Independent Schools</dc:title>
          <dc:creator>cdavis</dc:creator>
          <dc:type>dataset</dc:type>
          <dct:alternative>1</dct:alternative>
          <dct:modified>2017-05-16T01:00:03</dct:modified>
          <dc:format>OGC:WMS</dc:format>
          <registry:property name="category" value="Intelligence" />
          <dct:abstract>Provided by the Office of the Chief Technology Office </dct:abstract>
          <dc:source>http://maps2.dcgis.dc.gov/dcgis/services/DCGIS_APPS/CrimeMap/MapServer/WMSServer</dc:source>
          <ows:BoundingBox crs="http://www.opengis.net/def/crs/EPSG/0/4326" dimensions="2">
              <ows:UpperCorner>38.8249954929 -77.0945924037</ows:UpperCorner>
              <ows:LowerCorner>38.9847727049 -76.9288253097</ows:LowerCorner>
          </ows:BoundingBox>
        </csw:Record>
        <csw:Record xmlns:registry="http://gis.harvard.edu/HHypermap/registry/0.1" >
          <dc:identifier>48e9fcb5-f334-4fc1-b740-a413fd359ffb</dc:identifier>
          <dc:title>Charter Schools</dc:title>
          <dc:creator>cdavis</dc:creator>
          <dc:type>dataset</dc:type>
          <dct:alternative>2</dct:alternative>
          <dct:modified>2017-05-16T01:00:03</dct:modified>
          <dc:format>OGC:WMS</dc:format>
          <registry:property name="category" value="Intelligence" />
          <dct:abstract>Provided by the Office of the Chief Technology Office </dct:abstract>
          <dc:source>http://maps2.dcgis.dc.gov/dcgis/services/DCGIS_APPS/CrimeMap/MapServer/WMSServer</dc:source>
          <ows:BoundingBox crs="http://www.opengis.net/def/crs/EPSG/0/4326" dimensions="2">
              <ows:UpperCorner>38.823876698 -77.0405716006</ows:UpperCorner>
              <ows:LowerCorner>38.9662259566 -76.920550725</ows:LowerCorner>
          </ows:BoundingBox>
        </csw:Record>
        <csw:Record xmlns:registry="http://gis.harvard.edu/HHypermap/registry/0.1" >
          <dc:identifier>206a7b62-44fe-44cc-ac12-4a3981e0d4cb</dc:identifier>
          <dc:title>Colleges and Universities</dc:title>
          <dc:creator>cdavis</dc:creator>
          <dc:type>dataset</dc:type>
          <dct:alternative>3</dct:alternative>
          <dct:modified>2017-05-16T01:00:03</dct:modified>
          <dc:format>OGC:WMS</dc:format>
          <registry:property name="category" value="Intelligence" />
          <dct:abstract>Provided by the Office of the Chief Technology Office </dct:abstract>
          <dc:source>http://maps2.dcgis.dc.gov/dcgis/services/DCGIS_APPS/CrimeMap/MapServer/WMSServer</dc:source>
          <ows:BoundingBox crs="http://www.opengis.net/def/crs/EPSG/0/4326" dimensions="2">
              <ows:UpperCorner>38.8664105135 -77.0949257657</ows:UpperCorner>
              <ows:LowerCorner>38.9773671482 -76.9845781497</ows:LowerCorner>
          </ows:BoundingBox>
        </csw:Record>
        <csw:Record xmlns:registry="http://gis.harvard.edu/HHypermap/registry/0.1" >
          <dc:identifier>784fa753-ff86-4b93-9173-5a9f2f663caa</dc:identifier>
          <dc:title>Recreation Center</dc:title>
          <dc:creator>cdavis</dc:creator>
          <dc:type>dataset</dc:type>
          <dct:alternative>4</dct:alternative>
          <dct:modified>2017-05-16T01:00:03</dct:modified>
          <dc:format>OGC:WMS</dc:format>
          <registry:property name="category" value="Intelligence" />
          <dct:abstract>Provided by the Office of the Chief Technology Office </dct:abstract>
          <dc:source>http://maps2.dcgis.dc.gov/dcgis/services/DCGIS_APPS/CrimeMap/MapServer/WMSServer</dc:source>
          <ows:BoundingBox crs="http://www.opengis.net/def/crs/EPSG/0/4326" dimensions="2">
              <ows:UpperCorner>38.8188250508 -77.1046411529</ows:UpperCorner>
              <ows:LowerCorner>38.9702403318 -76.9122142032</ows:LowerCorner>
          </ows:BoundingBox>
        </csw:Record>
        <csw:Record xmlns:registry="http://gis.harvard.edu/HHypermap/registry/0.1" >
          <dc:identifier>6b287e6d-1df2-4441-bf30-74bfc883cf16</dc:identifier>
          <dc:title>Hospitals</dc:title>
          <dc:creator>cdavis</dc:creator>
          <dc:type>dataset</dc:type>
          <dct:alternative>5</dct:alternative>
          <dct:modified>2017-05-16T01:00:03</dct:modified>
          <dc:format>OGC:WMS</dc:format>
          <registry:property name="category" value="Intelligence" />
          <dct:abstract>Provided by the Office of the Chief Technology Office </dct:abstract>
          <dc:source>http://maps2.dcgis.dc.gov/dcgis/services/DCGIS_APPS/CrimeMap/MapServer/WMSServer</dc:source>
          <ows:BoundingBox crs="http://www.opengis.net/def/crs/EPSG/0/4326" dimensions="2">
              <ows:UpperCorner>38.8248007187 -77.1092506249</ows:UpperCorner>
              <ows:LowerCorner>38.9439270821 -76.9810381647</ows:LowerCorner>
          </ows:BoundingBox>
        </csw:Record>
        <csw:Record xmlns:registry="http://gis.harvard.edu/HHypermap/registry/0.1" >
          <dc:identifier>53855400-5fb5-4bd3-80f7-1b1e82a17926</dc:identifier>
          <dc:title>Libraries</dc:title>
          <dc:creator>cdavis</dc:creator>
          <dc:type>dataset</dc:type>
          <dct:alternative>6</dct:alternative>
          <dct:modified>2017-05-16T01:00:03</dct:modified>
          <dc:format>OGC:WMS</dc:format>
          <registry:property name="category" value="Intelligence" />
          <dct:abstract>Provided by the Office of the Chief Technology Office </dct:abstract>
          <dc:source>http://maps2.dcgis.dc.gov/dcgis/services/DCGIS_APPS/CrimeMap/MapServer/WMSServer</dc:source>
          <ows:BoundingBox crs="http://www.opengis.net/def/crs/EPSG/0/4326" dimensions="2">
              <ows:UpperCorner>38.8312905811 -77.0972590041</ows:UpperCorner>
              <ows:LowerCorner>38.9802624203 -76.9294869699</ows:LowerCorner>
          </ows:BoundingBox>
        </csw:Record>
        <csw:Record xmlns:registry="http://gis.harvard.edu/HHypermap/registry/0.1" >
          <dc:identifier>8d2cdeee-4c20-4c27-ac84-83a031ba44cd</dc:identifier>
          <dc:title>Places of Worship</dc:title>
          <dc:creator>cdavis</dc:creator>
          <dc:type>dataset</dc:type>
          <dct:alternative>7</dct:alternative>
          <dct:modified>2017-05-16T01:00:03</dct:modified>
          <dc:format>OGC:WMS</dc:format>
          <registry:property name="category" value="Intelligence" />
          <dct:abstract>Provided by the Office of the Chief Technology Office </dct:abstract>
          <dc:source>http://maps2.dcgis.dc.gov/dcgis/services/DCGIS_APPS/CrimeMap/MapServer/WMSServer</dc:source>
          <ows:BoundingBox crs="http://www.opengis.net/def/crs/EPSG/0/4326" dimensions="2">
              <ows:UpperCorner>38.8250436157 -77.1059504235</ows:UpperCorner>
              <ows:LowerCorner>38.9876984845 -76.9104702214</ows:LowerCorner>
          </ows:BoundingBox>
        </csw:Record>
        <csw:Record xmlns:registry="http://gis.harvard.edu/HHypermap/registry/0.1" >
          <dc:identifier>6b678638-bc8d-4553-a4c8-f519aeb1e85b</dc:identifier>
          <dc:title>Points of Interest - MAR Aliases</dc:title>
          <dc:creator>cdavis</dc:creator>
          <dc:type>dataset</dc:type>
          <dct:alternative>8</dct:alternative>
          <dct:modified>2017-05-16T01:00:03</dct:modified>
          <dc:format>OGC:WMS</dc:format>
          <registry:property name="category" value="Intelligence" />
          <dct:abstract>Provided by the Office of the Chief Technology Office </dct:abstract>
          <dc:source>http://maps2.dcgis.dc.gov/dcgis/services/DCGIS_APPS/CrimeMap/MapServer/WMSServer</dc:source>
          <ows:BoundingBox crs="http://www.opengis.net/def/crs/EPSG/0/4326" dimensions="2">
              <ows:UpperCorner>38.7931910435 -77.1143061942</ows:UpperCorner>
              <ows:LowerCorner>38.9922426245 -76.9121870912</ows:LowerCorner>
          </ows:BoundingBox>
        </csw:Record>
        <csw:Record xmlns:registry="http://gis.harvard.edu/HHypermap/registry/0.1" >
          <dc:identifier>487bb369-5893-4f8f-b2c6-e2d617b87189</dc:identifier>
          <dc:title>District Boundary</dc:title>
          <dc:creator>cdavis</dc:creator>
          <dc:type>dataset</dc:type>
          <dct:alternative>9</dct:alternative>
          <dct:modified>2017-05-16T01:00:03</dct:modified>
          <dc:format>OGC:WMS</dc:format>
          <registry:property name="category" value="Intelligence" />
          <dct:abstract>Provided by the Office of the Chief Technology Office </dct:abstract>
          <dc:source>http://maps2.dcgis.dc.gov/dcgis/services/DCGIS_APPS/CrimeMap/MapServer/WMSServer</dc:source>
          <ows:BoundingBox crs="http://www.opengis.net/def/crs/EPSG/0/4326" dimensions="2">
              <ows:UpperCorner>38.7915818645 -77.1198963847</ows:UpperCorner>
              <ows:LowerCorner>38.9959320315 -76.9090163311</ows:LowerCorner>
          </ows:BoundingBox>
        </csw:Record>
        <csw:Record xmlns:registry="http://gis.harvard.edu/HHypermap/registry/0.1" >
          <dc:identifier>f6884703-9216-45ce-bddc-4b8406a60fea</dc:identifier>
          <dc:title>2012 Wards</dc:title>
          <dc:creator>cdavis</dc:creator>
          <dc:type>dataset</dc:type>
          <dct:alternative>10</dct:alternative>
          <dct:modified>2017-05-16T01:00:03</dct:modified>
          <dc:format>OGC:WMS</dc:format>
          <registry:property name="category" value="Intelligence" />
          <dct:abstract>Provided by the Office of the Chief Technology Office </dct:abstract>
          <dc:source>http://maps2.dcgis.dc.gov/dcgis/services/DCGIS_APPS/CrimeMap/MapServer/WMSServer</dc:source>
          <ows:BoundingBox crs="http://www.opengis.net/def/crs/EPSG/0/4326" dimensions="2">
              <ows:UpperCorner>38.7915818645 -77.1198963847</ows:UpperCorner>
              <ows:LowerCorner>38.9959320315 -76.9090163311</ows:LowerCorner>
          </ows:BoundingBox>
        </csw:Record>
        <csw:Record xmlns:registry="http://gis.harvard.edu/HHypermap/registry/0.1" >
          <dc:identifier>97ffb982-e1db-4214-af77-0b9621c5b697</dc:identifier>
          <dc:title>2013 Advisory Neighborhood Commission</dc:title>
          <dc:creator>cdavis</dc:creator>
          <dc:type>dataset</dc:type>
          <dct:alternative>11</dct:alternative>
          <dct:modified>2017-05-16T01:00:03</dct:modified>
          <dc:format>OGC:WMS</dc:format>
          <registry:property name="category" value="Intelligence" />
          <dct:abstract>Provided by the Office of the Chief Technology Office </dct:abstract>
          <dc:source>http://maps2.dcgis.dc.gov/dcgis/services/DCGIS_APPS/CrimeMap/MapServer/WMSServer</dc:source>
          <ows:BoundingBox crs="http://www.opengis.net/def/crs/EPSG/0/4326" dimensions="2">
              <ows:UpperCorner>38.7915818645 -77.1198963847</ows:UpperCorner>
              <ows:LowerCorner>38.9959320315 -76.9090163311</ows:LowerCorner>
          </ows:BoundingBox>
        </csw:Record>
        <csw:Record xmlns:registry="http://gis.harvard.edu/HHypermap/registry/0.1" >
          <dc:identifier>4fd1ac4a-bdf2-4b0f-809b-ddbfbd76e8c5</dc:identifier>
          <dc:title>Police Service Areas</dc:title>
          <dc:creator>cdavis</dc:creator>
          <dc:type>dataset</dc:type>
          <dct:alternative>12</dct:alternative>
          <dct:modified>2017-05-16T01:00:03</dct:modified>
          <dc:format>OGC:WMS</dc:format>
          <registry:property name="category" value="Intelligence" />
          <dct:abstract>Provided by the Office of the Chief Technology Office </dct:abstract>
          <dc:source>http://maps2.dcgis.dc.gov/dcgis/services/DCGIS_APPS/CrimeMap/MapServer/WMSServer</dc:source>
          <ows:BoundingBox crs="http://www.opengis.net/def/crs/EPSG/0/4326" dimensions="2">
              <ows:UpperCorner>38.7915818645 -77.1198963847</ows:UpperCorner>
              <ows:LowerCorner>38.9959320315 -76.9090163311</ows:LowerCorner>
          </ows:BoundingBox>
        </csw:Record>
        <csw:Record xmlns:registry="http://gis.harvard.edu/HHypermap/registry/0.1" >
          <dc:identifier>5bad8a09-112c-44b8-867c-1d63a7f6c1f9</dc:identifier>
          <dc:title>Metropolitan Police Department (MPD) Districts</dc:title>
          <dc:creator>cdavis</dc:creator>
          <dc:type>dataset</dc:type>
          <dct:alternative>13</dct:alternative>
          <dct:modified>2017-05-16T01:00:03</dct:modified>
          <dc:format>OGC:WMS</dc:format>
          <registry:property name="category" value="Intelligence" />
          <dct:abstract>Provided by the Office of the Chief Technology Office </dct:abstract>
          <dc:source>http://maps2.dcgis.dc.gov/dcgis/services/DCGIS_APPS/CrimeMap/MapServer/WMSServer</dc:source>
          <ows:BoundingBox crs="http://www.opengis.net/def/crs/EPSG/0/4326" dimensions="2">
              <ows:UpperCorner>38.7915100502 -77.1199125397</ows:UpperCorner>
              <ows:LowerCorner>38.9959283519 -76.9090341132</ows:LowerCorner>
          </ows:BoundingBox>
        </csw:Record>
        <csw:Record xmlns:registry="http://gis.harvard.edu/HHypermap/registry/0.1" >
          <dc:identifier>01344237-49b0-43a3-80eb-8907108bffe9</dc:identifier>
          <dc:title>Police Stations</dc:title>
          <dc:creator>cdavis</dc:creator>
          <dc:type>dataset</dc:type>
          <dct:alternative>14</dct:alternative>
          <dct:modified>2017-05-16T01:00:03</dct:modified>
          <dc:format>OGC:WMS</dc:format>
          <registry:property name="category" value="Intelligence" />
          <dct:abstract>Provided by the Office of the Chief Technology Office </dct:abstract>
          <dc:source>http://maps2.dcgis.dc.gov/dcgis/services/DCGIS_APPS/CrimeMap/MapServer/WMSServer</dc:source>
          <ows:BoundingBox crs="http://www.opengis.net/def/crs/EPSG/0/4326" dimensions="2">
              <ows:UpperCorner>38.8533358106 -77.0748677251</ows:UpperCorner>
              <ows:LowerCorner>38.9631146859 -76.9428287157</ows:LowerCorner>
          </ows:BoundingBox>
        </csw:Record>
        <csw:Record xmlns:registry="http://gis.harvard.edu/HHypermap/registry/0.1" >
          <dc:identifier>b0aada68-0a60-4c8a-acb9-da8088f839bd</dc:identifier>
          <dc:title>Fire Stations</dc:title>
          <dc:creator>cdavis</dc:creator>
          <dc:type>dataset</dc:type>
          <dct:alternative>15</dct:alternative>
          <dct:modified>2017-05-16T01:00:03</dct:modified>
          <dc:format>OGC:WMS</dc:format>
          <registry:property name="category" value="Intelligence" />
          <dct:abstract>Provided by the Office of the Chief Technology Office </dct:abstract>
          <dc:source>http://maps2.dcgis.dc.gov/dcgis/services/DCGIS_APPS/CrimeMap/MapServer/WMSServer</dc:source>
          <ows:BoundingBox crs="http://www.opengis.net/def/crs/EPSG/0/4326" dimensions="2">
              <ows:UpperCorner>38.8308577245 -77.093581872</ows:UpperCorner>
              <ows:LowerCorner>38.9599655049 -76.9333316317</ows:LowerCorner>
          </ows:BoundingBox>
        </csw:Record>
        <csw:Record xmlns:registry="http://gis.harvard.edu/HHypermap/registry/0.1" >
          <dc:identifier>61e079a7-410e-441d-8cde-b35fe8fc7c76</dc:identifier>
          <dc:title>Business Improvement Districts</dc:title>
          <dc:creator>cdavis</dc:creator>
          <dc:type>dataset</dc:type>
          <dct:alternative>16</dct:alternative>
          <dct:modified>2017-05-16T01:00:03</dct:modified>
          <dc:format>OGC:WMS</dc:format>
          <registry:property name="category" value="Intelligence" />
          <dct:abstract>Provided by the Office of the Chief Technology Office </dct:abstract>
          <dc:source>http://maps2.dcgis.dc.gov/dcgis/services/DCGIS_APPS/CrimeMap/MapServer/WMSServer</dc:source>
          <ows:BoundingBox crs="http://www.opengis.net/def/crs/EPSG/0/4326" dimensions="2">
              <ows:UpperCorner>38.8517780653 -77.0715295454</ows:UpperCorner>
              <ows:LowerCorner>38.9266760983 -76.9789379543</ows:LowerCorner>
          </ows:BoundingBox>
        </csw:Record>
      </csw:Insert>
    </csw:Transaction>
