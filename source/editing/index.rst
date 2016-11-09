Editing and Version Management
==============================

Edit Features
-------------

Vector layers can be set up so that they’re editable. If you have permissions to edit a layer, the editing tools will be available in the map. If a layer is a GeoGit layer, then you can work with the edit history as well.

Add a point feature to a layer
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

A layer that is able to be edited will have the :guilabel:`Add Feature` button available.

#. Click the :guilabel:`Add Feature` button. The Drawing Geometry dialog will appear at the top of the map.

#. Click on the map to add the geometry. A simple point is placed with one click. Information on editing other types of features can be found in the follow on sections.

#. Click the :guilabel:`Accept Feature` button to keep the geometry. Click the :guilabel:`Cancel Feature` button to remove the added feature.

#. After the feature is accepted, the Edit Attributes window will open. Fill out the fields, or select values from the dropdowns to add attribute values.

#. Click the :guilabel:`Save` button at the bottom of the form to save the feature to the layer.

.. figure:: img/add-point-feature.gif

.. important:: If adding a multipoint feature the only difference is the option to select the `Add Geometry` button to add another point.

Add a line to a layer
^^^^^^^^^^^^^^^^^^^^^

A line layer consists of lines that represent features - such as roads, powerlines, and other features.

#. Click the :guilabel:`Add Feature` button. The Drawing Geometry dialog will appear at the top of the screen.

#. Click on the map to begin drawing the linear feature. Click additional points to add all of the vertices. Double-click the last vertice to finish drawing the line.

#. Click the :guilabel:`Accept Feature` button to add the geometries to the layer.

#. After accepting the feature, populate the attributes in the Edit Attributes window with any required information.

#. Click the :guilabel:`Save` button to save your changes

.. important:: If adding a multiline feature the only difference is the option to select the `Add Geometry` button to add another line.

.. figure:: img/add-line-feature.gif

Add a polygon feature to a layer
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

A simple polygon layer has a single polygon per feature.

#. Click the :guilabel:`Add Feature` button. The Drawing Geometry dialog will appear at the top of the screen.

#. Click on the map to begin adding the polygon. Continue to click to add all of the vertices. To finalize the polygon, close the geometry by clicking on the first vertex again.

#. Click the Right Angles button to create right angle corners on your polygon.

#. Click the :guilabel:`Accept Feature` button to add the geometries to the layer.

#. After accepting the feature, populate the attributes in the Edit Attributes window with any required information.

#. Click the :guilabel:`Save` button to save your changes.

.. important:: If adding a multipolygon feature the only difference is the option to select the `Add Geometry` button to add another polygon.

.. figure:: img/add-polygon-feature.gif

Edit attributes
^^^^^^^^^^^^^^^

You can edit the attributes for any features in an editable layer.

#. Click a feature on the map. The feature info box will appear.

#. Click the :guilabel:`Edit Attributes` button to open the Edit Attributes window.

#. Add Attribute information as necessary.

#. Click the :guilabel:`Save` button to save your changes.

.. figure:: img/edit-attribute.gif

Edit point geometries on the map
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Point layers can be one of two types: simple points and multipoints. For simple points, there is one point per feature. Multipoints can have one or more points per feature.

#. Click a point feature on the map to open the feature info box.

#. Click the :guilabel:`Edit Geometry` button. This will open the `Drawing Geometry` dialog at the top of the screen. Your selected feature will be highlighted in blue.

#. Click and Drag the feature to a new location

#. Click the :guilabel:`Accept Feature` button to save the new feature location. Click the :guilabel:`Cancel` button to cancel your edit.

.. figure:: img/edit-point-geometry.gif

Edit point geometry manually
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Coordinates for point geometries can also be edited manually. This is useful when you have the coordinates from another source (such as a report).

#. Click a point feature on the map to open the feature info box.

#. Click the :guilabel:`Edit Attributes` button. The Edit Attributes window will open.

#. Click the Location field to edit the point's coordinates.

#. Click the :guilabel:`Save` button to save your changes.

  .. figure:: img/edit-point-manually.gif

Edit line or polygon geometries
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Any existing features in an editable layer can be modified. If it is a GeoGit layer, the history of all of the edits will be maintained to ensure the provenance of the data.

#. Click a feature on the map to be edited. This will open the feature info box.

#. Click the :guilabel:`Edit Geometry` button. The `Editing Geometry` dialog will open.

#. Mouse over the geometry to highlight the vertex to edit. Click and drag the vertice to a new location. Repeat to edit any additional vertices.

.. figure:: img/edit-polygon-geometry.gif

Filter features using spatial filters
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Spatial filters are used to select features from one layer based on their location in relation to features from another layer. The overlapping, or intersecting, data will be filtered in the attribute table, and can be used for additional analysis.

#. Click a feature on the map to select it. This will set the boundaries for the filter. All of the filtered data will be within this feature.

#. Click the filter button to :guilabel:`Use this feature in a spatial filter`. The selected feature will change colors.

#. Click a feature from the layer you want to filter, and click the :guilabel:`Show Table` button in the information window. This will open the attribute table for the entire layer. All of the features in this layer will display in the attribute table.

#. Click the :guilabel:`Spatial Filter` button in the Table View. This filters the data to display only the features intersecting the original feature.

  .. figure:: img/spatial-filter.gif

     Filter intersecting feature attributes

You can expand your spatial filter by selecting additional features from your layer. The results will be displayed in your attributes table.

  .. figure:: img/additional-features.gif

     In the first example, there were 15 results using the spatial filter. By selecting additional features, there are now 42 results that intersect the layer.

A spatial filter can also be created using an individual point with a given radius, allowing you to see how many features from a second layer fall within that radius.

#. Click a point on the map from the desired layer. This will be the base point. A blue circle will highlight the point.

#. Click the filter button to :guilabel:`Use this feature in a spatial filter`. The selected feature will change colors. Enter the desired radius in meters when prompted. Click the :guilabel:`Add Spatial Filter` button.

#. Click a feature from the layer you want to filter, and click the :guilabel:`Show Table` button in the information window. This will open the attribute table for the entire layer. All of the features in this layer will display in the attribute table.

#. Click the :guilabel:`Spatial Filter` button in the Table View. This filters the data to display only the features within the radius on the original point.

  .. figure:: img/point-spatial-filter.gif

     This example shows how many schools are within a 2000 meter radius of our point from the first layer. When the spatial filter is applied, six results are returned.

You can edit the geometry of an existing spatial filter to adjust the size of the filter area.

#. Select a spatial filter feature on the map, and click the :guilabel:`Edit Geometry` button. The selected feature will change colors and Editing Geometry window will open.

#. Hover your mouse over a point on the feature to be moved. A dot will appear over the point.

#. Click and drag the point to its new location. Repeat this process until all of the points have been moved to their new location.

#. Select the :guilabel:`Accept Feature` button to finish your edits, and apply the new shape to your spatial filter.

  .. figure:: img/edit-spfilter.gif

Delete a spatial filter
^^^^^^^^^^^^^^^^^^^^^^^

Once you are finished with your spatial filter, you may want to clear the results, and remove the filter from your map.

#. From the Table View of your filtered results, select the :guilabel:`Spatial Filter` button. The tabe will show all features within the layer. Close the table view window.

#. Click on the feature you used in your spatial filter, and select the :guilabel:`Delete Feature` button. Confirm that you want to delete the feature.

  .. figure:: img/delete-spfeature.png

Version Management
------------------

GeoGit is a specialized database that was designed for distributed editing and supports collaborative editing of geospatial data. It is designed for vector data (point, line, polygon, etc.). When a layer has been stored in GeoGit, it maintains the history of all of the changes made to the data along with who made the changes and when. Within the web map, you can view the history for a layer and for the features.

GeoGig tab in Boundless Exchange
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

GeoGig layers in Boundless Exchange will have a GeoGig tab in addition to the other tabs on the Layer detail page. The history is a list of commits that have been made to the layer.

#. In the Layer detail page, click on the GeoGig tab to see the chronological list of commits.

   .. figure:: img/history-geogig-tab.png

      Commit history within the GeoGig tab

#. In order to search through the commit history, type in the search box in the GeoGig tab. You can search for any value in the commit history.

View layer history
^^^^^^^^^^^^^^^^^^

You can view a layer's history from the map.

#. Click the name of the layer you want to view. The menu will expand to show additional layer options.

#. Click on the Show History button. The history will expand.

   .. figure:: img/show-layer-history.png

#. To view details about a commit, hover over it with the mouse. The color bar next to the commit indicates the type of edits that were made. Green indicates a new feature was added. Yellow indicates a feature was modified. Red indicates a feature was deleted. A commit can have multiple types of edits. In such cases, the bar will have colors representative of the types of edits that were made.

   .. figure:: img/layer-history.png

      History detail for a commit

#. Click on a commit, and its history will update to show the individual edits within that commit. MapLoom will make one commit per edit. The Arbiter mobile app can upload many edits as one commit.

   .. figure:: img/summary-of-changes.png

#. Click the :guilabel:`Show Changes` button to bring up a new window, displaying the specific changes that were made. The changes will be highlighted with the same color coding as the commits. Green means something was added. Yellow means the feature was changed. Red means the feature was deleted. In the image below, the feature was added, and so the feature on the map is highlighted in green.

   .. figure:: img/show-feature-edits.png

View feature history
^^^^^^^^^^^^^^^^^^^^

In addition to viewing the history of edits on a GeoGit layer, you can also view the history of a feature.

#. Click a feature on the map. The feature details will appear.

#. Click on the :guilabel:`Show History` button. The history list will expand with the commits that contain changes for that feature.

   .. figure:: img/view-feature-history.png

#. Click on the specific commit you want to view details for. The history will update to show the edits made to the feature for that commit.

   .. figure:: img/list-commit-edits.png

#. Click the :guilabel:`Show Changes` button to bring up a new window, displaying the specific changes that were made. The changes will be highlighted with the same color coding as the commits. Green means something was added. Yellow means the feature was changed. Red means the feature was deleted. In the image below, the feature was added, and so the feature on the map is highlighted in green.

   .. figure:: img/show-changes.png

#. Click on the :guilabel:`Show Authors` button to see the names and dates for every attribute in the feature. Note that through the lifetime of a feature, there can be several authors. This is a good way to see who has contributed to a feature’s current state.

   .. figure:: img/show-authors.png

Summarize history
^^^^^^^^^^^^^^^^^

You can visualize a summary of all of the edits within a date range for a layer.

#. Click the :guilabel:`Show History` button for layer you want to summarize.

   .. figure:: img/show-layer-history.png

#. Click the :guilabel:`History Summary` button.

   .. figure:: img/show-history-summary.png

#. Enter the date range for the history to summarize.

   .. figure:: img/select-date-range.png

#. Click on the :guilabel:`Summarize` button.

   .. figure:: img/summarize-history.png

#. Click the :guilabel:`Show Changes` button for one of the edits in the list to see a detailed view.

Export history
^^^^^^^^^^^^^^

You can export a summary of all of the edits within a date range for a layer.

#. Click the :guilabel:`Show History` button for layer you want to summarize.

   .. figure:: img/show-layer-history.png

#. Click on the :guilabel:`History Summary` button

   .. figure:: img/show-history-summary.png

#. Enter the date range for the history to summarize.

   .. figure:: img/select-date-range.png

#. Click the :guilabel:`Export CSV` button.

#. When prompted to save the file, browse to the location where you want to save it, and click Ok.
