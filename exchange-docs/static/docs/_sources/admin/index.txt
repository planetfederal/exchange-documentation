Administration
==============

Working with Registry
---------------------

In Exchange, there are two primary types of data that can be added to Registry, a service or a single layer. A service is two or more layers being added to the map at the same time, whereas a single layer is just an individual layer. The form is the same for either one, but you will need to have a relatively good understanding of your data in order to successfully insert your new record.

Currently, you can add the following services in Exchange:

  * WMS - Web Map Service
  * MapServer - ESRI Map Service
  * ImageServer - ESRI Image Service

Add an individual record to CSW
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Exchange users with administrator privileges are able to add `CSW <http://www.opengeospatial.org/standards/cat>`_ records through their Exchange webpage.

1. Click on your user name in the toolbar. Select **Registry** from the drop-down menu to open the record form.

  .. figure:: img/registry-menu.png

2. A list of all items registered in Exchange will open, displaying their status as Complete, Unknown, Pending, or Error. Click the :guilabel:`Register a new Record` button in the top right corner to add a new record.

  .. figure:: img/registered-items.png

3. Add the **Service URL** - This is the URL address for the endpoint you are trying to add.

  *Geoserver Example:*
    https://mapstory.org/geoserver/geonode/wms

  *ESRI MapServer Example:*
    https://ngamaps.geointapps.org/arcgis/rest/services/Hurricane_Matthew/Bahamas_Latest_Damage_Assessments/MapServer

    **Note:** Entering a MapServer url will auto-populate the available services such as WMSServer, WFSServer, FeatureServer.

  *ESRI MapServer WMSserver Example:*
    https://ngamaps.geointapps.org/arcgis/services/Hurricane_Matthew/Haiti_Latest_Assessments/MapServer/wmsserver

  *ESRI ImageServer Example:*
    https://gis.ngdc.noaa.gov/arcgis/rest/services/bag_hillshades/ImageServer

4. **Title** - This field should populate automatically. The title should be related to the data, but should also be unique enough to find when performing a search. You can change the title if you don’t want what auto-filled.

5. **Layer Identifier** - For ESRI MapServer Services, this field will be populated automatically, however, for any other service type, the name of the layer is required for this field.

6. **Category** - Select a category from the list that best describes your data.

7. **Abstract** - The abstract should provide a brief description of the data being added.

8. **Agency** - Where did the information come from? This should also auto-populate. If Exchange is unable to detect who the data belongs to from the endpoint, add  the creator/agency information.

9. **Contact Email** - Please add your email address here.

10. **Contact Phone** - Please add a contact phone number here.

11. **Gold** -  Select this checkbox if the data is NGA-approved content.

  .. figure:: img/register-record.png

12. Additional services types can be added by selecting the type from the drop down menu, and adding the URL. Service types discovered from the service URL are also listed at the top of the form.

  .. figure:: img/add-types.png

13. Click the :guilabel:`Submit Record` button to nominate record.

For additional examples of records that have been successfully added in Exchange, please check out: `CSW Examples <https://gist.github.com/davisc/219f75f42bc2a620319070a04c4fa98d>`_

Verify the record
^^^^^^^^^^^^^^^^^

Once you submit your record, you will be directed to the Registered Items page. To verify the record status in Registry, you can search for it using the Exchange search field at the top of the page, or use the Add Layer function from your map.
