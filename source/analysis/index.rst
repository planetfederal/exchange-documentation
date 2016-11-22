Working with data
=================

Working within the attribute table
----------------------------------

In previous sections, you learned how to add data to the attribute table, and how to edit the attributes of a feature on the map. Here we will discuss how to manipulate the data from within the attribute table to find exactly what you need.

To open the **Table View**, click on a layer, and select the :guilabel:`Show Table` button.

   .. figure:: img/show-table.png

All of the data provided for this layer will display in the Table View, though you may need to scroll up and down, or left and right to view all of the data on the page. Select the left or right arrow buttons to move to a different page.

  .. figure:: img/table-view.png

Search all attributes
---------------------

The Search All Fields search examines all of the attributes in a layer, and returns all features that have your search term in any of its attribute fields. It is a simple search that will find results from any location.

  .. figure:: img/search-all-fields.png

#. Type a search term in the Search All Fields text box.

#. Click the magnifying glass button. Your results will display in the attribute table.

**NOTE:** You can use the ``*`` or the **?** as wildcards if you aren’t sure of the exact spelling of a search term. The * matches any number of characters. You can use the asterisk ``(*)`` anywhere in a character string. For example, **wh*** will find what, wheat, and whale, but not awhile or watch. The **?** will match a single character in a specific position. A search for **r?t** will return rat or rot, but not rest or retract. A search of a partial word, or an open ended search, will return results containing those characters. Typing **abr** will return abrams and candelabra. You may also use a combination of the two. To clear the search, click the magnifying glass or the **X** button.

Advanced filters
----------------

Advanced filters can help with your analysis by returning only the features you want to see. Whether you are looking for data matching a specific attribute, or events occurring within a certain time period, using an advanced filter will help you find what you need.

#. Select the :guilabel:`Advanced Filters` button in the Table View to open the Filter by Attribute options.

#. Select an attribute type, and click the drop down menu to select whether you would like to filter for an exact match, or a term that would be contained within the results.

#. Add your search term to the text box, and click the :guilabel:`Apply Filters` button. Repeat these steps to add additional filters, and refine your search even more.

   .. figure:: img/filter-by-attribute.png

You are also able to filter attributes with dates or numbers by using either an exact match, or setting a range.

#. Click the drop down menu to select either **Exact Match** or **Range**. Type the date or number in the text box for an exact match, or select the dates/times using the calendar to establish a range.

#. Select the :guilabel:`Apply Filters` button.

   .. figure:: img/date-range-filter.gif

Your results will display in the Table View. To clear your results, and return to the complete list of features, select the :guilabel:`Clear Filters` button. Click the :guilabel:`Advanced Filters` button again to return to **Search All Fields**.

Filter features using spatial filters
-------------------------------------

Spatial filters are used to select features from one layer based on their location in relation to features from another layer. The overlapping, or intersecting, data will be filtered in the attribute table, and can be used for additional analysis.

#. Click a feature on the map to select it. This will set the boundaries for the filter, and all of the returned data will be within this feature.

#. Click the filter button to **Use this feature in a spatial filter**. The selected feature will change colors.

#. Click a feature from the layer you want to filter, and click the :guilabel:`Show Table` button in the information window. This will open the attribute table for the entire layer. All of the features in this layer will display in the attribute table.

#. Click the :guilabel:`Spatial Filter` button in the Table View. This filters the data to display only the features intersecting the original feature.

   .. figure:: img/spatial-filter.gif

      *Filter intersecting feature attributes*

You can expand your spatial filter by selecting additional features from your layer. The results will be displayed in your attributes table.

   .. figure:: img/additional-features.gif

      *In the first example, there were 15 results using the spatial filter. By selecting additional features, there are now 42 results that intersect the layer.*

A spatial filter can also be created using an individual point with a given radius, allowing you to see how many features from a second layer fall within that radius.

#. Click a point on the map from the desired layer. This will be the base point. A blue circle will highlight the point.

#. Click the filter button to :guilabel:`Use this feature in a spatial filter`. The selected feature will change colors. Enter the desired radius in meters when prompted. Click the :guilabel:`Add Spatial Filter` button.

#. Click a feature from the layer you want to filter, and click the :guilabel:`Show Table` button in the information window. This will open the attribute table, which will include all layer features.

#. Click the :guilabel:`Spatial Filter` button in the Table View. This filters the data to display only the features within the radius on the original point.

   .. figure:: img/point-spatial-filter.gif

      *This example shows how many schools are within a 2000 meter radius of our point from the first layer. When the spatial filter is applied, six results are returned.*

You can edit the geometry of an existing spatial filter to adjust the size of the filter area.

#. Select a spatial filter feature on the map, and click the :guilabel:`Edit Geometry` button. The selected feature will change colors and the Editing Geometry window will open.

#. A blue dot will appear over the point on the feature to be moved.

#. Click and drag the point to its new location. Repeat this process until all of the points have been moved to their new location.

#. Select the :guilabel:`Accept Feature` button to finish your edits, and apply the new shape to your spatial filter.

   .. figure:: img/edit-spfilter.gif

Delete a spatial filter
-----------------------

Once you are finished with your spatial filter, you may want to clear the results, and remove the filter from your map.

#. From the Table View of your filtered results, select the :guilabel:`Spatial Filter` button. This will clear the filter, and  show all features within the layer. Close the Table View window.

#. Click on the feature you used in your spatial filter, and select the :guilabel:`Delete Feature` button. Confirm that you want to delete the feature.

Combine filters for deeper analysis
-----------------------------------

Combining a filter by attribute and a spatial filter allows you to dig even deeper into your data to provide better analysis. Once you have completed your spatial filter, you can use an **Advanced Filter** to drill down even further.

#. After completing a spatial filter, select an attribute type, and click the drop down menu to select the appropriate criteria.

#. Add your search term to the text box, and click the :guilabel:`Apply Filters` button.

Not only will all of your results fall completely within the area you selected for your spatial filter, but they will also meet your advanced filter criteria.
