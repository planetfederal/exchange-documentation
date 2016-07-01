## Working with Maps

Maps are comprised of various layers and their styles. Layers are available as local layers, or they can be remote layers, served from other web servers. Exchange maps can be manipulated via map zoom and extent, layer ordering, and style.

### Create a Map

New maps can be created several ways. You can create a new map in the __Explore Maps__ section, or from one or more layers.

#### Create a new map

Click Maps on the Boundless Exchange toolbar at the top of the page.
    ![exchange-toolbar-maps](img/maps/exchange-toolbar-maps.png)

Click the ![create-new-map](img/maps/create-new-map.png) button.

#### Create a new map from a layer

Click Layers on the Boundless Exchange toolbar.
    ![exchange-toolbar-layers](img/maps/exchange-toolbar-layers.png)

Click ![create-a-map](img/maps/create-a-map.png) next to a layer. A new map will open with the layer as part of the map.

#### Create a new map from multiple layers

1.	Click the ![add-to-cart](img/maps/add-to-cart.png) button  next to each of the layers you’d like to add to your map. The layers will display in your Cart.

2. Click the ![create-a-map](img/maps/create-a-map.png) button to add all of the layers to a new map.

    ![create-map-from-cart](img/maps/create-map-from-cart.png)

    * Remove a layer from the cart by clicking the X next to its name.

A new map will open with all of the layers displayed.

#### Add layers to a map

Once you have your map opened, you can add additional layers.

1. Click the __Add Layer (+)__ button in the Layers field.

    ![maps-add-layers](img/maps/maps-add-layers.png)

    The Add Layers dialog box will open. From here you can select which layer(s) you would like to add by clicking the checkbox next to the layer’s name.

    ![maps-add-layers-dialog](img/maps/maps-add-layers-dialog.png)

2. Click the Add button when you have selected the layers you want to add.

#### Add layers from another server

You have the ability to add layers from a server other than the local Geoserver you’re working on. You can add web mappings servers (WMS), tile servers, MapQuest, MapBox and OpenStreetMap, for example.

1.	Click the __Add Layer (+)__ button in the Layers field.

2.	Click the drop down menu to select a server. Click __Add New Server__ to add one that is not listed.

3.	Add the type of server (WMS or TMS), a name for the server and the URL in the Add Server dialog box.

    ![maps-add-server](img/maps/maps-add-server.png)

4.	Click the Add button to save it to the list of available servers. Once it is added, you can select the new server from the list, and add additional layers to the map.

#### Change layer order

Layers on a map are drawn from bottom to top. The top layer in your list will display on top of any layers below it. Each layer will appear in the order it is displayed in your list. Sometimes a layer may need to be reordered so it can be more clearly displayed.

1.	Click on the name of the layer you want to reorder.

2.	Drag the layer up or down to the position you’d like the layer to be in.

The layer will now be visible in the new order in which you’ve moved it.

#### Toggle layer visibility

![toggle-layer-visibility](img/maps/toggle-layer-visibility.png)

1.	Click the Toggle Visibility ![toggle-visible-button](img/maps/toggle-visible-button.png) button to turn a layer off.

2.	Click the Toggle Visibility ![toggle-invisible-button](img/maps/toggle-invisible-button.png)  button again to turn a layer back on.

Toggle Visibility allows you to turn a layer’s display off and on without having to remove the layer form the map completely.

#### Zoom to data

The Zoom to data button allows you to center the map quickly on a particular layer. It is particularly convenient when you need to quickly return to the extent of the data for that layer.

1.	Click a layer in the layer list.

2.	Click the Zoom to data button. The map will zoom in to and center on that particular layer extent.

    ![map-zoom-to-data](img/maps/map-zoom-to-data.png)

    Note: If a layer’s visibility is dependent on scale, and the data extent is at a lower scale, you will still need to zoom in to be able to view the data.

#### Show layer info

Information about a layer is available in the map by clicking the Show Layer Info button. Show Layer info will include server information, basic metadata, and the projection (SRS).

1.	Click on a layer name in the layer list to expand the layer options.

2.	Click the Show layer info button.

    ![show-layer-info](img/maps/show-layer-info.png)

    The layer Info window will display.

    ![layer-info](img/maps/layer-info.png)

#### Remove a layer from the map

1. To remove a layer from the map, click the name of the layer you’d like to remove, and click the Remove layer button in the layer tools.

    ![remove-a-layer](img/maps/remove-a-layer.png)

2. Click the Yes button in the confirmation dialog box.

    ![confirm-remove-layer](img/maps/confirm-remove-layer.png)

#### Get feature information

To get information in a vector layer, simply click on a feature on the map. Once you click the feature, the information window will display. The point of the information window will touch the feature you clicked.

![get-feature-info](img/maps/get-feature-info.png)

#### Change attribute visibility

Individual attribute visibility can be turned off and on in a feature window. This can make managing large numbers of attribute fields in a layer easier.

1.	Click the layer name in the layer list on the map. The layer’s additional options will display.

    ![toggle-attribute-visibility](img/maps/toggle-attribute-visibility.png)

2.	Click on the visibility button for an individual icon to toggle the visibility off and on.

3.	Click a feature on the map from that layer. It will no longer appear, as it has been toggled off.

#### Using the Legend

A legend displayed the symbols used for vector layers in a map. It can be toggled off and on to maximize screen space when necessary.

![maps-legend](img/maps/maps-legend.png)

Click the Toggle Legend button to toggle the legend off and on.

   ![toggle-legend](img/maps/toggle-legend.png)

#### Save a map

Saving a map allows you to maintain your preferences for the next use, as well as makes it available for other Exchange users.

1.	Click the Save this map button.

    ![save-map](img/maps/save-map.png)

2.	Add a title and an abstract for your map so it is searchable by others. Click the Save button to save your changes. The name will be reflected in the title, and replace “New Map.”

    ![save-this-map](img/maps/save-this-map.png)

    The Map is now saved in the list of maps on the Maps page.

#### Create a copy of a map

You are able to use an existing map as a starting point for another map. This allows you to incorporate the work others have done without changing their maps.

1.	Click the Save this map ![save-map-button](img/maps/save-map-button.png)    button on the toolbar.

2.	Add a title and abstract for the map.

3.	Click the Save Copy button ![save-map-copy](img/maps/save-map-copy.png)  .

A copy of the original map is now saved in the list of maps on the Maps page.


### Managing Maps

Every map has it’s own page that provides more information about the map along with other options such as permissions and metadata. To get to the page for a map, click on the name of the map.

![manage-maps-details](img/maps/manage-maps-details.png)

The map detail page provides a thumbnail view of the map, along with information about the map. It also tells you the layers that are used in the map.

![maps-details](img/maps/maps-details.png)

#### Download Data Layers

This will allow you to download the contents of the map that are stored in Exchange. It does not download data from other servers, however.

1. Click the ![download-map-button](img/maps/download-map-button.png) button.

2. Select Download Data Layers.

    ![download-data-layers](img/maps/download-data-layers.png)

    If multiple layers exist, you will be able to select one or more of the available layers. For example, in this map, the only layer associated to it is the __nyap__ layer, as shown in the Map Layers section.

    ![map-uses-this-layer](img/maps/map-uses-this-layer.png)

3. Select the layer(s) that you want to download individually OR click the ![start-downloading-this-map](img/maps/start-downloading-this-map.png) button to begin downloading.  

#### Download Web Map Context

The Web Map Context (WMC) is an open geospatial consortium (OGC) standard for metadata describing a map service.

1. Click the ![download-map-button](img/maps/download-map-button.png) button.

2. Select Download Web Map Context from the menu.

    ![download-data-layers](img/maps/download-data-layers.png)

    A new tab will open with the XML for the web map context.

#### Edit Map Metadata

You can edit the information about the map.

1. Click the ![edit-map-button](img/maps/edit-map-button.png) button

2. Click the __Edit__  button under Metadata on the Edit Map menu.

    ![edit-map](img/maps/edit-map.png)


    In the metadata page, fill in the fields with information about the map. The more information you provide, the better others will understand your map.

  3. Click the __Update__ button at the top or bottom of the page to save your changes.

#### Set Map Thumbnail

By default the thumbnail images for maps will only have the vector layers. In order to include the background map you will need to use the Set Map Thumbnail button.

1. Pan and/or zoom the inset map on the __Map Details__ page so that it’s centered on the view you would like for the map thumbnail.

2. Click the ![edit-map-button](img/maps/edit-map-button.png) button.

3. Click the __Set__ button under Thumbnail on the Edit Map menu.

    ![edit-map](img/maps/edit-map.png)

This will set the map thumbnail with the base map and layers included.

![old-thumbnail](img/maps/old-thumbnail.png)
_Old Thumbnail_

![new-thumbnail](img/maps/new-thumbnail.png)
_New Thumbnail_

#### Edit Map Permissions

The map permissions determine which users can view or edit a map. The permissions can be set to establish:

*	Who can view it?
*	Who can download it?
*	Who can change metadata for it?
*	Who can manage it? (updated, delete, change permissions, publish/edit)

    1. Click the ![change-permissions](img/maps/change-permissions.png) button in the __Permissions__ section.

        ![permissions](img/maps/permissions.png)

    2. Establish the permissions for viewing, editing, and managing according to your needs.

        ![set-resource-permission](img/maps/set-resource-permissions.png)

    3.  Click the __Apply Changes__ button to save changes.

#### Remove a Map

You are able to remove a map from Exchange. This will remove the map for all users.

1. Click the ![edit-map-button](img/maps/edit-map-button.png) button.

2. Click the red __Remove__ button under Map in the Edit Map menu.
    ![edit-map](img/maps/edit-map.png)

3. Click __Yes, I am sure__ to confirm.

    ![confirm-remove-map](img/maps/confirm-remove-map.png)
