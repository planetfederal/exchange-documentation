Registry
========

Registry is a system for building, maintaining, and deploying a public registry of web map services of various types, OGC and Esri services. From a user's perspective, registry integration is within the mapping client. Rather than having to add multiple services into exchange, registry exposes external services and allows the user to add them to their map.

Search the registry for a layer
-------------------------------

Create a new map
^^^^^^^^^^^^^^^^

Registry layers can be added to an existing map, but this example demonstrates how to create a new map, and add a registry layer.

#. To create a new map select Maps on the Boundless Exchange toolbar at the top of the page.

   .. figure:: img/bex-toolbar.png

#. Select the :guilabel:`Create` button from the Exchange homepage.

   .. figure:: img/create-map.png

   A new map will open, and Registry will be displayed in the map menu.

.. figure:: img/map-menu.png

Search for a layer
^^^^^^^^^^^^^^^^^^

#. Select the :guilabel:`Registry of layer (+)` button.

   .. figure:: img/registry-of-layer-button.png

#. The **Registry of layers** window will open.

   .. figure:: img/registry-of-layers-window.png

#. Type a search term in the text box to search for a layer related to that term.

   .. figure:: img/search-term.png

   You can filter the layer results by time using either the text boxes or the slide bar.

#. Type a year in the From text box to select a starting time. Then type a year in the To text box to select an end year. Years containing data are represented in the bar graph.

   .. figure:: img/time-filter.png

   You can also click and drag the points on the slide bar to select **From** and **To** dates.

#. Click the :guilabel:`SEARCH` button to submit your search, or the :guilabel:`RESET` button to clear your search terms.

   Your search results will display in a new window.

   .. figure:: img/results.png

Add a layer from the registry to the map
----------------------------------------

Once you have search results from the registry, you can select specific layers to add to your map.

#. Hover your mouse over a layer in the results list. Additional information about the layer will display in the window near the results list.

   .. figure:: img/additional-information.png

#. Select the layer in the search results list to add it to your cart.

   .. figure:: img/search-results.png

   The layer will be highlighted, and will display in the Cart window.

   .. figure:: img/cart.png

#. Select the :guilabel:`ADD` button to add the layer to your map.

   Your layers will now be added to your map menu, and displayed on your map.

   .. figure:: img/results-on-map.png

Registry Catalogue Service for the Web (CSW)
--------------------------------------------

CSW (Catalogue Service for the Web) is an OGC (Open Geospatial Consortium) specification that defines common interfaces to discover, browse, and query metadata about data, services, and other potential resources.

Registry provides access to its catalogue via the CSW standard for all metadata at varying levels of granularity. Any client supporting CSW (desktop, GIS, web application, client library, etc.) can integrate the Registry CSW endpoints.

Interacting with the Registry CSW
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The Registry CSW endpoints are implemented using pycsw. pycsw is an OGC CSW server implementation written in Python, enabling the publishing and discovery of data and services, providing a standards-based metadata and catalogue component of spatial data infrastructures. pycsw is Certified OGC Compliant and is an OGC Reference Implementation.

Registry CSW endpoints
^^^^^^^^^^^^^^^^^^^^^^
The Registry CSW endpoints support the OGC CSW standard (2.0.2 and 3.0.0) as well as the ISO Metadata Application 1.0.0 Profile. The CSW endpoints operate over HTTP GET, POST (XML) and SOAP. Additional discovery APIs supported include OpenSearch Geo and Time, OAI-PMH and SRU.

Making HTTP POST (XML) requests
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

While making HTTP GET requests is relatively straightforward, HTTP POST (XML) requests require the client to open the connection and send the request XML as the payload. Below are a few examples on how to run HTTP POST (XML) requests on the command line:

   .. code-block:: bash

      # assuming XML request is saved to csw-request.xml

      # curl
      curl -X POST -d @csw-request.xml http://trial.exchange.boundlessps.com/registry/search/csw

      # lwp-request
      cat csw-request.xml | POST http://trial.exchange.boundlessps.com/registry/search/csw

      # wget
      wget http://trial.exchange.boundlessps.com/registry/search/csw --post-file=csw-request.xml

Service Endpoints
^^^^^^^^^^^^^^^^^

   The URL of the Registry CSW is found at http://trial.exchange.boundlessps.com/registry/search/csw

GetCapabilities
^^^^^^^^^^^^^^^

The ``GetCapabilities`` operation provides CSW clients with service metadata about the CSW service as an XML document.

   |

   **Examples:**

   |

   HTTP GET:

   .. code-block:: default

     http://trial.exchange.boundlessps.com/registry/search/csw?service=CSW&version=2.0.2&request=GetCapabilities

   HTTP POST (XML):

   .. code-block:: xml

     <csw:GetCapabilities xmlns:csw="http://www.opengis.net/cat/csw/2.0.2" xmlns:ows="http://www.opengis.net/ows" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.opengis.net/cat/csw/2.0.2 http://schemas.opengis.net/csw/2.0.2/CSW-discovery.xsd" service="CSW">
       <ows:AcceptVersions>
         <ows:Version>2.0.2</ows:Version>
       </ows:AcceptVersions>
       <ows:AcceptFormats>
         <ows:OutputFormat>application/xml</ows:OutputFormat>
       </ows:AcceptFormats>
     </csw:GetCapabilities>

DescribeRecord
^^^^^^^^^^^^^^

The ``DescribeRecord`` operation provides CSW clients with elements of supported information models of the CSW service.

   |

   **Examples:**

   |

   HTTP GET:

   .. code-block:: default

     http://trial.exchange.boundlessps.com/registry/search/csw?service=CSW&version=2.0.2&request=DescribeRecord

   HTTP POST (XML):

   .. code-block:: xml

     <csw:DescribeRecord service="CSW" version="2.0.2" outputFormat="application/xml" schemaLanguage="http://www.w3.org/XML/Schema" xmlns="http://www.opengis.net/cat/csw/2.0.2" xmlns:csw="http://www.opengis.net/cat/csw/2.0.2" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.opengis.net/cat/csw/2.0.2 http://schemas.opengis.net/csw/2.0.2/CSW-discovery.xsd">
       <csw:TypeName>csw:Record</csw:TypeName>
     </csw:DescribeRecord>

GetDomain
^^^^^^^^^

The ``GetDomain`` operation provides an interface to return all possible values for a given metadata property/queryable or parameter.

   |

   **Examples:**

   |

   HTTP GET:

   .. code-block:: default

     http://trial.exchange.boundlessps.com/registry/search/csw?service=CSW&version=2.0.2&request=GetDomain&propertyname=dc:type

   .. code-block:: default

     http://trial.exchange.boundlessps.com/registry/search/csw?service=CSW&version=2.0.2&request=GetDomain&parametername=GetRecords.outputSchema

   HTTP POST (XML):

   .. code-block:: xml

     <csw:GetDomain xmlns:csw="http://www.opengis.net/cat/csw/2.0.2" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.opengis.net/cat/csw/2.0.2 http://schemas.opengis.net/csw/2.0.2/CSW-discovery.xsd" version="2.0.2" service="CSW">
       <csw:PropertyName>dc:type</csw:PropertyName>
     </csw:GetDomain>

     <csw:GetDomain xmlns:csw="http://www.opengis.net/cat/csw/2.0.2" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.opengis.net/cat/csw/2.0.2 http://schemas.opengis.net/csw/2.0.2/CSW-discovery.xsd" version="2.0.2" service="CSW">
       <csw:ParameterName>GetRecords.outputSchema</csw:ParameterName>
     </csw:GetDomain>

GetRecords
^^^^^^^^^^

The ``GetRecords`` operation provides a query interface to search for data both using spatial predicates as well as attribute / temporal queries, or both. ``GetRecords`` queries are best invoked as HTTP POST (XML).

Examples:

   |

   **Notes:**

   - adjust the ``startPosition`` and ``maxRecords`` parameters to customize / page responses
   - adjust the optional ``outputSchema`` parameter to customize output format (default is Dublin Core [``http://www.opengis.net/cat/csw/2.0.2``], use ``http://www.isotc211.org/2005/gmd`` for ISO)
   - adjust the optional ``csw:ElementSetName`` parameter (``brief``, ``summary`` [default], ``full``) to adjust verbosity of metadata record responses
   - bounding box queries and responses always use axis order latitude longitude
   - Adjust the optional csw:ElementSetName parameter (brief, summary [default], full) to adjust verbosity of metadata record responses. The following table provides an overview of the elements returned:

Returnable elements
^^^^^^^^^^^^^^^^^^^

   .. csv-table::
      :header: "csw:ElementSetName", "Elements Returned"
      :widths: 18, 40

      "brief", "`dc:identifier`, `dc:title`, `dc:type`, `ows:BoundingBox`"
      "summary", "brief + `dc:format`, `dc:subject`, `dct:modified`, `dc:abstract`, `dct:references`"
      "full", "summary + `dc:date`, `dc:creator`, `dc:publisher`, `dc:contributor`, `dc:source`, `dc:language`, `dc:rights`"

   **Query all records, return records 1 - 15:**

   .. code-block:: xml

     <csw:GetRecords xmlns:csw="http://www.opengis.net/cat/csw/2.0.2" xmlns:ogc="http://www.opengis.net/ogc" service="CSW" version="2.0.2" resultType="results" startPosition="1" maxRecords="15" outputFormat="application/xml" outputSchema="http://www.opengis.net/cat/csw/2.0.2" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.opengis.net/cat/csw/2.0.2 http://schemas.opengis.net/csw/2.0.2/CSW-discovery.xsd">
       <csw:Query typeNames="csw:Record">
         <csw:ElementSetName>full</csw:ElementSetName>
       </csw:Query>
     </csw:GetRecords>

   **Query records with a bounding box:**

   .. code-block:: xml

     <csw:GetRecords xmlns:csw="http://www.opengis.net/cat/csw/2.0.2" xmlns:ogc="http://www.opengis.net/ogc" service="CSW" version="2.0.2" resultType="results" startPosition="1" maxRecords="5" outputFormat="application/xml" outputSchema="http://www.opengis.net/cat/csw/2.0.2" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.opengis.net/cat/csw/2.0.2 http://schemas.opengis.net/csw/2.0.2/CSW-discovery.xsd" xmlns:gml="http://www.opengis.net/gml">
       <csw:Query typeNames="csw:Record">
         <csw:ElementSetName>brief</csw:ElementSetName>
         <csw:Constraint version="1.1.0">
           <ogc:Filter>
             <ogc:BBOX>
               <ogc:PropertyName>ows:BoundingBox</ogc:PropertyName>
               <gml:Envelope>
                 <gml:lowerCorner>47 -5</gml:lowerCorner>
                 <gml:upperCorner>55 20</gml:upperCorner>
               </gml:Envelope>
             </ogc:BBOX>
           </ogc:Filter>
         </csw:Constraint>
       </csw:Query>
     </csw:GetRecords>

   **Query records by attribute:**

   .. code-block:: xml

     <csw:GetRecords xmlns:csw="http://www.opengis.net/cat/csw/2.0.2" xmlns:ogc="http://www.opengis.net/ogc" service="CSW" version="2.0.2" resultType="results" startPosition="1" maxRecords="10" outputFormat="application/xml" outputSchema="http://www.opengis.net/cat/csw/2.0.2" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.opengis.net/cat/csw/2.0.2 http://schemas.opengis.net/csw/2.0.2/CSW-discovery.xsd" xmlns:gmd="http://www.isotc211.org/2005/gmd" xmlns:apiso="http://www.opengis.net/cat/csw/apiso/1.0">
       <csw:Query typeNames="csw:Record">
         <csw:ElementSetName>brief</csw:ElementSetName>
         <csw:Constraint version="1.1.0">
           <ogc:Filter>
             <ogc:PropertyIsLike matchCase="false" wildCard="%" singleChar="_" escapeChar="\">
               <ogc:PropertyName>dc:title</ogc:PropertyName>
               <ogc:Literal>roads%</ogc:Literal>
             </ogc:PropertyIsLike>
           </ogc:Filter>
         </csw:Constraint>
       </csw:Query>
     </csw:GetRecords>

   **Query records by full text search:**

   .. code-block:: xml

     <csw:GetRecords xmlns:csw="http://www.opengis.net/cat/csw/2.0.2" xmlns:ogc="http://www.opengis.net/ogc" service="CSW" version="2.0.2" resultType="results" startPosition="1" maxRecords="5" outputFormat="application/xml" outputSchema="http://www.opengis.net/cat/csw/2.0.2" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.opengis.net/cat/csw/2.0.2 http://schemas.opengis.net/csw/2.0.2/CSW-discovery.xsd">
       <csw:Query typeNames="csw:Record">
         <csw:ElementSetName>brief</csw:ElementSetName>
         <csw:Constraint version="1.1.0">
           <ogc:Filter>
             <ogc:PropertyIsEqualTo>
               <ogc:PropertyName>csw:AnyText</ogc:PropertyName>
               <ogc:Literal>roads</ogc:Literal>
             </ogc:PropertyIsEqualTo>
           </ogc:Filter>
         </csw:Constraint>
       </csw:Query>
     </csw:GetRecords>

   **Partial response:**

   .. code-block:: xml

     <!-- pycsw 2.0.0 -->
     <csw:GetRecordsResponse version="2.0.2" xsi:schemaLocation="http://www.opengis.net/cat/csw/2.0.2 http://schemas.opengis.net/csw/2.0.2/CSW-discovery.xsd">
       <csw:SearchStatus timestamp="2016-08-01T13:10:38Z"/>
       <csw:SearchResults nextRecord="6" numberOfRecordsMatched="27724" numberOfRecordsReturned="5" recordSchema="http://www.opengis.net/cat/csw/2.0.2" elementSet="brief">
       ......

   **Query records by combined bounding box and full text search:**

   .. code-block:: xml

     <csw:GetRecords xmlns:csw="http://www.opengis.net/cat/csw/2.0.2" xmlns:gml="http://www.opengis.net/gml" xmlns:ogc="http://www.opengis.net/ogc" service="CSW" version="2.0.2" resultType="results" startPosition="1" maxRecords="5" outputFormat="application/xml" outputSchema="http://www.opengis.net/cat/csw/2.0.2" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.opengis.net/cat/csw/2.0.2 http://schemas.opengis.net/csw/2.0.2/CSW-discovery.xsd">
       <csw:Query typeNames="csw:Record">
         <csw:ElementSetName>brief</csw:ElementSetName>
         <csw:Constraint version="1.1.0">
           <ogc:Filter>
             <ogc:And>
               <ogc:PropertyIsEqualTo>
                 <ogc:PropertyName>csw:AnyText</ogc:PropertyName>
                 <ogc:Literal>roads</ogc:Literal>
               </ogc:PropertyIsEqualTo>
               <ogc:BBOX>
                 <ogc:PropertyName>ows:BoundingBox</ogc:PropertyName>
                 <gml:Envelope>
                   <gml:lowerCorner>47 -5</gml:lowerCorner>
                   <gml:upperCorner>55 20</gml:upperCorner>
                 </gml:Envelope>
               </ogc:BBOX>
             </ogc:And>
           </ogc:Filter>
         </csw:Constraint>
       </csw:Query>
     </csw:GetRecords>

   **Query the total number of records in the catalogue (HTTP GET):**

   .. code-block:: default

     http://trial.exchange.boundlessps.com/registry/search/csw?service=CSW&version=2.0.2&request=GetRecords&typenames=csw:Record&elementsetname=brief


GetRecordById
^^^^^^^^^^^^^

The ``GetRecordById`` operation returns defailed information for specific metadata records.

   |

   **Examples:**

   |

   HTTP GET:

   .. code-block:: default

     http://trial.exchange.boundlessps.com/registry/search/csw?service=CSW&version=2.0.2&request=GetRecordById&id=16bbf4f8-8e88-45c6-a76b-6af51b2b3555&elementsetname=full

   HTTP GET (ISO 19139):

   .. code-block:: default

     http://trial.exchange.boundlessps.com/registry/search/csw?service=CSW&version=2.0.2&request=GetRecordById&id=16bbf4f8-8e88-45c6-a76b-6af51b2b3555&elementsetname=full&outputSchema=http://www.isotc211.org/2005/gmd

   HTTP GET (ISO 19139 brief):

   .. code-block:: default

     http://trial.exchange.boundlessps.com/registry/search/csw?service=CSW&version=2.0.2&request=GetRecordById&id=16bbf4f8-8e88-45c6-a76b-6af51b2b3555&elementsetname=brief&outputSchema=http://www.isotc211.org/2005/gmd

   HTTP POST (XML):

   .. code-block:: xml

     <csw:GetRecordById service="CSW" version="2.0.2" outputFormat="application/xml" outputSchema="http://www.opengis.net/cat/csw/2.0.2" xmlns:csw="http://www.opengis.net/cat/csw/2.0.2" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.opengis.net/cat/csw/2.0.2 http://schemas.opengis.net/csw/2.0.2/CSW-discovery.xsd">
       <csw:Id>16bbf4f8-8e88-45c6-a76b-6af51b2b3555</csw:Id>
       <csw:ElementSetName>full</csw:ElementSetName>
     </csw:GetRecordById>

OpenSearch Geo and Time Extensions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The Registry CSW endpoints support the OGC OpenSearch Geo and Time Extensions 1.0 standard. This provides a lightweight mechanism to query the catalogue via HTTP GET for simple spatial and temporal searches.

To query the Registry via OpenSearch, requests must be specificed with mode=opensearch. The following parameters are supported:

   * {searchTerms} (keywords)
   * {geo:box} (bounding box of minx,miny,maxx,maxy)
   * {time:start} and {time:end} (temporal)

Specifying combinations of these parameters constitutes an exclusive search.

   |

   **Examples:**

   |

   **Autodiscovery:**

   .. code-block:: default

     http://trial.exchange.boundlessps.com/registry/search/csw?mode=opensearch&service=CSW&version=2.0.2&request=GetCapabilities

   **Keywords:**

   .. code-block:: default

     http://trial.exchange.boundlessps.com/registry/search/csw?mode=opensearch&service=CSW&version=2.0.2&request=GetRecords&elementsetname=full&resulttype=results&typenames=csw:Record&q=idaho

   **Bounding Box:**

   .. code-block:: default

     http://trial.exchange.boundlessps.com/registry/search/csw?mode=opensearch&service=CSW&version=2.0.2&request=GetRecords&elementsetname=full&resulttype=results&typenames=csw:Record&bbox=-140,20,-40,40

   **Temporal Extent (range):**

   .. code-block:: default

     http://trial.exchange.boundlessps.com/registry/search/csw?mode=opensearch&service=CSW&version=2.0.2&request=GetRecords&elementsetname=full&resulttype=results&typenames=csw:Record&time=2001/2004

   **Temporal Extent (since 2004):**

   .. code-block:: default

     http://trial.exchange.boundlessps.com/registry/search/csw?mode=opensearch&service=CSW&version=2.0.2&request=GetRecords&elementsetname=full&resulttype=results&typenames=csw:Record&time=2004/

   **Temporal Extent (before 2004):**

   .. code-block:: default

     http://trial.exchange.boundlessps.com/registry/search/csw?mode=opensearch&service=CSW&version=2.0.2&request=GetRecords&elementsetname=full&resulttype=results&typenames=csw:Record&time=/2004

   **Temporal Extent (2001/2007) and Keywords:**

   .. code-block:: default

     http://trial.exchange.boundlessps.com/registry/search/csw?mode=opensearch&service=CSW&version=2.0.2&request=GetRecords&elementsetname=full&resulttype=results&typenames=csw:Record&time=2001/2007&q=fauna

   **Temporal Extent (2001/2007) and Bounding Box:**

   .. code-block:: default

     http://trial.exchange.boundlessps.com/registry/search/csw?mode=opensearch&service=CSW&version=2.0.2&request=GetRecords&elementsetname=full&resulttype=results&typenames=csw:Record&time=2001/2007&bbox=-140,20,-40,40

   **Keywords and Bounding Box:**

   .. code-block:: default

     http://trial.exchange.boundlessps.com/registry/search/csw?mode=opensearch&service=CSW&version=2.0.2&request=GetRecords&elementsetname=full&resulttype=results&typenames=csw:Record&q=vegetation&bbox=-140,20,-40,40

   **Transactions**

Registry's CSW service, powered by pycsw, has the ability to process CSW Harvest and Transaction requests (CSW-T). Registry's pycsw implementation of CSW-T has been tuned to work with Registry workflows for adding supported services.

   **Authentication**

CSW-T are be enabled within Registry by default. HTTP basic authentication is required to insert/update/delete services from Registry via CSW-T. Note you can also use Registry's admin console to insert/update/delete services. Registry CSW-T responses will respond immediately with success and Registry will begin to harvest the service asynchronously.

   **Supported Resource Types**

For CSW transactions and harvesting, Registry supports the following metadata resource types:

   |

   .. csv-table::
      :header: "Name", "CSW ResourceType"
      :widths: 30, 40

      "Catalogue Service for the Web (CSW)", "`http://www.opengis.net/cat/csw/2.0.2`"
      "Web Map Service (WMS)", "`http://www.opengis.net/wms`"
      "Web Map Tile Service (WMTS)", "`http://www.opengis.net/wmts/1.0`"
      "Tile Map Service (TMS)", "`https://wiki.osgeo.org/wiki/TMS`"
      "ArcGIS REST MapServer", "`urn:x-esri:serviceType:ArcGIS:MapServer`"
      "ArcGIS REST ImageServer", "`urn:x-esri:serviceType:ArcGIS:ImageServer`"
      "Harvard WorldMap", "`http://worldmap.harvard.edu/`"
      "Mapwarper", "`https://github.com/timwaters/mapwarper`"

   .. important:: Your network must be able to make outgoing HTTP requests for this functionality.

   .. important:: CSW-T Harvest requests require only the base URL of a given service (not fully GetCapabilities request URLs).

   .. important:: CSW-T Harvest requests are identical in structure and syntax, with the differences being in the HTTP GET resourcetype / HTTP POST csw:ResourceType parameter being one of the abovementioned ResourceType's, as well as the HTTP GET source / HTTP POST csw:Source parameter being the desired service to add.

   **Harvest a WMS**

   HTTP GET:

   .. code-block:: default

     http://trial.exchange.boundlessps.com/registry/search/csw?service=CSW&version=2.0.2&request=Harvest&resourcetype=http://www.opengis.net/wms&source=http://host/wms

   .. code-block:: xml

     <csw:Harvest xmlns:csw="http://www.opengis.net/cat/csw/2.0.2" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.opengis.net/cat/csw/2.0.2 http://schemas.opengis.net/csw/2.0.2/CSW-publication.xsd" service="CSW" version="2.0.2">
       <csw:Source>http://host/wms</csw:Source>
       <csw:ResourceType>http://www.opengis.net/wms</csw:ResourceType>
     </Harvest>

   **Result**

   .. code-block:: xml

     <csw:HarvestResponse xmlns:csw="http://www.opengis.net/cat/csw/2.0.2" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.opengis.net/cat/csw/2.0.2 http://schemas.opengis.net/csw/2.0.2/CSW-publication.xsd">
       <csw:TransactionResponse version="2.0.2">
         <csw:TransactionSummary>
           <csw:totalInserted>34</csw:totalInserted>
           <csw:totalUpdated>0</csw:totalUpdated>
           <csw:totalDeleted>0</csw:totalDeleted>
         </csw:TransactionSummary>
         <csw:InsertResult>
           <csw:BriefRecord>
             <dc:identifier>1</dc:identifier>
             <dc:title>http://host/wms</dc:title>
           </csw:BriefRecord>
         </csw:InsertResult>
       </csw:TransactionResponse>
     </csw:HarvestResponse>

   **Harvest a CSW**

   .. important:: CSW-T Harvest requests made against a remote CSW will scrape the remote CSW for services and attempt to harvest those services into Registry.

   HTTP GET:

   .. code-block:: default

     http://trial.exchange.boundlessps.com/registry/search/csw?service=CSW&version=2.0.2&request=Harvest&resourcetype=http://www.opengis.net/cat/csw/2.0.2&source=http://host/csw

   HTTP POST (XML):

   .. code-block:: xml

     <csw:Harvest xmlns:csw="http://www.opengis.net/cat/csw/2.0.2" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.opengis.net/cat/csw/2.0.2 http://schemas.opengis.net/csw/2.0.2/CSW-publication.xsd" service="CSW" version="2.0.2">
       <csw:Source>http://host/csw</csw:Source>
       <csw:ResourceType>http://www.opengis.net/cat/csw/2.0.2</csw:ResourceType>
     </Harvest>

   **Result**

   .. code-block:: xml

     <csw:HarvestResponse xmlns:csw="http://www.opengis.net/cat/csw/2.0.2" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.opengis.net/cat/csw/2.0.2 http://schemas.opengis.net/csw/2.0.2/CSW-publication.xsd">
       <csw:TransactionResponse version="2.0.2">
         <csw:TransactionSummary>
           <csw:totalInserted>34</csw:totalInserted>
           <csw:totalUpdated>0</csw:totalUpdated>
           <csw:totalDeleted>0</csw:totalDeleted>
         </csw:TransactionSummary>
         <csw:InsertResult>
           <csw:BriefRecord>
             <dc:identifier>1</dc:identifier>
             <dc:title>http://host/csw</dc:title>
           </csw:BriefRecord>
         </csw:InsertResult>
       </csw:TransactionResponse>
     </csw:HarvestResponse>

References
----------

   * `CSW (Catalogue Service for the Web) <http://www.opengeospatial.org/standards/cat>`_

   * `OGC (Open Geospatial Consortium) <http://www.opengeospatial.org>`_

   * `Data.gov <http://data.gov>`_

   * `pycsw <http://pycsw.org>`_

   * `OGC Reference Implementation <http://cite.opengeospatial.org/reference>`_

   * `Certified OGC Compliant <http://www.opengeospatial.org/resource/products/details/?pid=1104>`_
