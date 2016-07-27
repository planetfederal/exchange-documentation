##Catalogue Service for the Web (CSW)
CSW (Catalogue Service for the Web) is an OGC (Open Geospatial Consortium) specification that defines common interfaces to discover, browse, and query metadata about data, services, and other potential resources.

Data.gov provides access to its catalog via the CSW standard for both first-order and all metadata for harvested data, services and applications. The first-order CSW endpoint provides collection level filtering of all metadata records. The all metadata CSW endpoint provides all levels of metadata at varying levels of granularity.

Any client supporting CSW (desktop, GIS, web application, client library, etc.) can integrate the Data.gov CSW endpoints.

###Interacting with the Data.gov CSW

The Data.gov CSW endpoints are implemented using pycsw. pycsw is an OGC CSW server implementation written in Python, enabling the publishing and discovery of data and services, providing a standards-based metadata and catalogue component of spatial data infrastructures. pycsw is Certified OGC Compliant and is an OGC Reference Implementation.

###Data.gov CSW endpoints

The Data.gov CSW endpoints support the OGC CSW 2.0.2 standard as well as the ISO Metadata Application 1.0.0 Profile. The CSW endpoints operate over HTTP GET, POST (XML) and SOAP.

###Making HTTP POST (XML) requests

While making HTTP GET requests is relatively straightforward, HTTP POST (XML) requests require the client to open the connection and send the request XML as the payload. Below are a few examples on how to run HTTP POST (XML) requests on the command line:

![http-post-xml](img/csw/http-post-xml.png)

###Service Endpoints

First-order metadata: http://catalog.data.gov/csw

All metadata: http://catalog.data.gov/csw-all

We will use the first-order CSW endpoint for the examples below.

###GetCapabilities

The __GetCapabilities__ operation provides CSW clients with service metadata about the CSW service as an XML document.

__Examples:__

__HTTP GET:__ http://catalog.data.gov/csw?service=CSW&version=2.0.2&request=GetCapabilities

__HTTP POST (XML):__

![http-post-example](img/csw/http-post-example.png)

###DescribeRecord

The DescribeRecord operation provides CSW clients with elements of supported information models of the CSW service.

__Examples:__

__HTTP GET:__ http://catalog.data.gov/csw?service=CSW&version=2.0.2&request=DescribeRecord

__HTTP POST (XML):__

![describe-record](img/csw/describe-record.png)

###GetDomain

The GetDomain operation provides an interface to return all possible values for a given metadata property/queryable or parameter.

__Examples:__

__HTTP GET:__ http://catalog.data.gov/csw?service=CSW&version=2.0.2&request=GetDomain&propertyname=dc:type

http://catalog.data.gov/csw?service=CSW&version=2.0.2&request=GetDomain&parametername=GetRecords.outputSchema

__HTTP POST (XML):__

![get-domain](img/csw/get-domain.png)

###GetRecords

The GetRecords operation provides a query interface to search for data both using spatial predicates as well as attribute / temporal queries, or both. GetRecords queries are best invoked as HTTP POST (XML). Examples:

Notes:

- Adjust the startPosition and maxRecords parameters to customize / page responses

- Adjust the optional outputSchema parameter to customize output format (default is Dublin Core [http://www.opengis.net/cat/csw/2.0.2], use http://www.isotc211.org/2005/gmd for ISO)

- Bounding box queries and responses always use axis order latitude longitude

- Adjust the optional csw:ElementSetName parameter (brief, summary [default], full) to adjust verbosity of metadata record responses. The following table provides an overview of the elements returned:

Returnable elements

![returnable-elements](img/csw/returnable-elements.png)

####Query all records, return records 1 - 15:

![query-all-records](img/csw/query-all-records.png)

####Query records with a bounding box:

![query-bounding-box](img/csw/query-bounding-box.png)

####Query records by attribute:

![query-by-attribute](img/csw/query-by-attribute.png)

####Query records by full text search:

![full-text-search](img/csw/full-text-search.png)

####and part of the response:

![full-text-response](img/csw/full-text-response.png)

####Query records by combined bounding box and full text search:

![bounding-and-text](img/csw/bounding-and-text.png)

####Query the total number of records in the catalogue (HTTP GET):

http://catalog.data.gov/csw?service=CSW&version=2.0.2&request=GetRecords&typenames=csw:Record&elementsetname=brief

###GetRecordById

The GetRecordById operation returns defailed information for specific metadata records.

__Examples:__

__HTTP GET:__

http://catalog.data.gov/csw?service=CSW&version=2.0.2&request=GetRecordById&id=16bbf4f8-8e88-45c6-a76b-6af51b2b3555&elementsetname=full

__HTTP GET (ISO 19139):__

http://catalog.data.gov/csw?service=CSW&version=2.0.2&request=GetRecordById&id=16bbf4f8-8e88-45c6-a76b-6af51b2b3555&elementsetname=full&outputSchema=http://www.isotc211.org/2005/gmd

__HTTP GET (ISO 19139 brief):__

http://catalog.data.gov/csw?service=CSW&version=2.0.2&request=GetRecordById&id=16bbf4f8-8e88-45c6-a76b-6af51b2b3555&elementsetname=brief&outputSchema=http://www.isotc211.org/2005/gmd

__HTTP POST (XML):__

![record-byld-post-xml](img/csw/record-byld-post-xml.png)

###Searching Collections

The Data.gov CSW supports searches within for collections. The following query searches for all records that are part of a collection via the __apiso:ParentIdentifier__ core queryable:

![search-collections](img/csw/search-collections.png)

###OpenSearch Geo and Time Extensions

The Data.gov CSW endpoints support the OGC OpenSearch Geo and Time Extensions 1.0 standard. This provides a lightweight mechanism to query the catalogue via HTTP GET for simple spatial and temporal searches.

To query the Data.gov via OpenSearch, requests must be specificed with mode=opensearch. The following parameters are supported:

- __{searchTerms}__ (keywords)
- __{geo:box}__ (bounding box of minx,miny,maxx,maxy)
- __{time:start}__ and __{time:end}__ (temporal)

Specifying combinations of these parameters constitutes an exclusive search.

__Examples:__

__Autodiscovery:__

http://catalog.data.gov/csw?mode=opensearch&service=CSW&version=2.0.2&request=GetCapabilities

__Keywords:__

http://catalog.data.gov/csw?mode=opensearch&service=CSW&version=2.0.2&request=GetRecords&elementsetname=full&resulttype=results&typenames=csw:Record&q=idaho

__Bounding Box:__

http://catalog.data.gov/csw?mode=opensearch&service=CSW&version=2.0.2&request=GetRecords&elementsetname=full&resulttype=results&typenames=csw:Record&bbox=-140,20,-40,40

__Temporal Extent (range):__

http://catalog.data.gov/csw?mode=opensearch&service=CSW&version=2.0.2&request=GetRecords&elementsetname=full&resulttype=results&typenames=csw:Record&time=2001/2004

__Temporal Extent (since 2004):__

http://catalog.data.gov/csw?mode=opensearch&service=CSW&version=2.0.2&request=GetRecords&elementsetname=full&resulttype=results&typenames=csw:Record&time=2004/

__Temporal Extent (before 2004):__

http://catalog.data.gov/csw?mode=opensearch&service=CSW&version=2.0.2&request=GetRecords&elementsetname=full&resulttype=results&typenames=csw:Record&time=/2004

__Temporal Extent (2001/2007) and Keywords:__

http://catalog.data.gov/csw?mode=opensearch&service=CSW&version=2.0.2&request=GetRecords&elementsetname=full&resulttype=results&typenames=csw:Record&time=2001/2007&q=fauna

__Temporal Extent (2001/2007) and Bounding Box:__

http://catalog.data.gov/csw?mode=opensearch&service=CSW&version=2.0.2&request=GetRecords&elementsetname=full&resulttype=results&typenames=csw:Record&time=2001/2007&bbox=-140,20,-40,40

__Keywords and Bounding Box:__

http://catalog.data.gov/csw?mode=opensearch&service=CSW&version=2.0.2&request=GetRecords&elementsetname=full&resulttype=results&typenames=csw:Record&q=vegetation&bbox=-140,20,-40,40
