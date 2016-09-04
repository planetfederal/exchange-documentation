Working with Layers
===================

Exchange allows you to upload layers. The following are the supported Vector formats:

* ESRI Shapefile
* CSV (Comma Separated Value)
* Google Earth KML
* GeoJSON

The following are the supported Raster formats:

* GeoTIFF
* ERDAS Imagine
* JPEG2000
* NITF (National Imagery Transmission Format)
* CIB (Controlled Image Base)

  * 1 Meter
  * 5 Meter
  * 10 Meter
* CADRG (Compressed Arc Digitized Raster Graphic)

  * GNC (Global Navigation Chart)
  * JNC (Jet Navigation Chart)
  * ONC (Operational Navigation Chart)
  * TPC (Tactical Pilotage Chart)
  * JOG (Joint Operations Graphic)
  * TLM100 (Topographic Line Map 100K)
  * TLM50 (Topographic Line Map 50K)

All of the following filetypes can be uploaded by being placed in a **Zip Archive (.zip)**.

Once the layers are uploaded, they will be available to other users in Exchange.

Uploading a layer
-----------------

#. Select the :guilabel:`Layers` link on the top toolbar. This will bring up the **Explore Layers** page.

   .. figure:: img/explore-layers.png

#. Select the :guilabel:`Upload Layers` button. This will bring up the upload form.

#. Either browse to the files to be uploaded or drag and drop them in the browser. Note that many files consist of multiple files to be complete. If you are uploading an ESRI Shapefile, then you need to include the .dbf, .prj, .shp, and .shx files.

   .. figure:: img/upload-form.png

#. Click on the :guilabel:`Choose File` button. This will bring up a local file dialog. Navigate to your data folder and select the files composing the geospatial layer. Note that some data formats consist of multiple files.

#. Exchange has the ability to restrict who can view, edit, and manage layers. On the right side of the page, under **Who can view and download this data?**, select Any registered user. This will ensure that anonymous view access is disabled.

#. In the same area, under **Who can edit data for this layer?**, type a user or users in the field that you want to restrict edit access to. This will ensure that only specific users are able to edit the data in the layer.

   .. figure:: img/permissions-edit.png

#. If no destination is selected, the files will be imported into the default spatial data store for Exchange. This will always be the destination for raster data.

   If you have vector data that you want to have time enabled, then check the box for :guilabel:`Configure Time`.

   If you have vector data that you want to be versioned, then check the box for :guilabel:`Import to Geogig`. The form will update to provide a dropdown menu for existing GeoGit repositories. To use an existing repository as the destination, select it in the dropdown. In order to import the data into a new GeoGig repository:

   * Type the name of the repository.

   .. figure:: img/repo-field.png

   * Select that name in the dropdown so it appears in the field.

#. Select the :guilabel:`Upload Files` button to upload the data and create a layer. A `Performing Final GeoServer Config Step` dialog will display showing the progress of the upload.

   |

   If you checked the :guilabel:`Configure Time` checkbox, then a new window will open for **Time Options**.

   .. figure:: img/time-options.png

   A feature can currently support one or two time attributes. If a single attribute is used, the feature is considered relevant at that single point in time. If two attributes are used, the second attribute represents the end of a valid period for the feature.

   |

   A time attribute can be one of:

   * An existing date
   * Text that can be converted to a timestamp
   * A number representing a year

   The 'best guess' will handle date and optional time variants of **ISO-8601**. In terms of the formatting flags noted above, these are:

   .. code-block:: default

      yyyy-MM-dd'T'HH:mm:ss.SSS'Z'
      yyyy-MM-dd'T'HH:mm:sss'Z'
      yyyy-MM-dd'T'HH:mm:ss'Z'
      yyyy-MM-dd'T'HH:mm'Z'
      yyyy-MM-dd'T'HH'Z'
      yyyy-MM-dd
      yyyy-MM
      yyyy

#. Your layer has been uploaded to Exchange. Now you will be able to access to the its info page (clicking on the :guilabel:`Layer Info` button), access to its metadata edit form (clicking on the :guilabel:`Edit Metadata` button) or to manage the styles for it (clicking on the :guilabel:`Manage Styles` button).

Layer information
-----------------

Each layer has an information page associated to it, which has several options for managing the layer’s data. Information is available for the following:

* Info – Displays general information about the layer
* Attributes
* Ratings – Based on the ratings of other users
* Comments – Any comments on the layer from users
* Legend – Maps using this layer – What other maps within Exchange are using the layer
* Permissions – How others can see or modify this layer
* Styles – What styles are associated to the layer
* About – Provides information on the owner, Point of Contact and Metadata Author

To access Layer Information, click the **Layers** link on the Exchange toolbar. This will open the Explore Layers page. Here you will see the list of all of the available layers. Each layer has a thumbnail of the image, as well as the title, author, and any associated keywords.

#. Click the layer title you want to access.

   .. figure:: img/layer-info-preview.png

#. The layer's information page will open.

   .. figure:: img/layer-info-copy.png

Layer Detail Tabs
^^^^^^^^^^^^^^^^^

There are five tabs that have information pertaining to the particular layer: Info, Attributes, Ratings, History and Comments.

#. The Info tab is the default, and displays basic information about the layer, such as the title, who created it, and when it was published.

   .. figure:: img/details-info.png

#. The Attributes tab displays the layer attribute table. Layer attribute statistics will only display if the value is a numeric attribute, otherwise, no statistics will be calculated.

   .. figure:: img/details-attributes.png

#. The Ratings tab displays all ratings that have been given to a layer by other users. Click on a star to rate the layer (one to five stars). Click the Cancel this rating icon to delete your rating.

   .. figure:: img/details-ratings.png

#. The Comments tab allows you to see what others are saying about this layer, as well as leave a comment.

   .. figure:: img/details-comments.png

#. Click the :guilabel:`Add Comment` button to leave a comment about the layer.

   .. figure:: img/add-comment.png

Editing Metadata and Managing Layers
------------------------------------

Each layer’s information page allows you to view the information that makes up the layer. Exchange allows you to edit metadata pertaining to a layer that you have uploaded, as well as any layers you are given permissions to access by other users.

Edit Metadata
^^^^^^^^^^^^^

Metadata is information about the layer, such as the owner, title, purpose or restrictions on a layer. You can include as much information about the layer as you feel is important. The Abstract section is the description that will display in Exchange.

#. Click the :guilabel:`Edit Layer` button, and select the edit button under Metadata.

   .. figure:: img/metadata-edit.png

#. The **Edit Metadata** page will display.

#. Edit the information fields to include anything pertinent to the layer.

#. Click the :guilabel:`Update` button at either the top or bottom of the page to save your changes.

Edit Permissions
^^^^^^^^^^^^^^^^
Layer permissions are established when the layer is first imported, but the administrator/owner of the layer can adjust those permissions as needed. Permissions allow you to manage who can view/download the data, who can make edits, and who can manage the data.

#. Click the :guilabel:`Change Layer Permissions` button.

#. Set permissions for the resource to give the required access to the layer. Permissions can be granted to Anyone for viewing and downloading, if the checkbox is selected. Edit permissions can be given to registered individuals or groups.

   .. figure:: img/resource-permissions.png

#. Click Apply Changes to save.

Manage Styles
^^^^^^^^^^^^^

Layers can have multiple styles associated to it. The Styles section tells you which style(s) is currently associated to the layer.

.. figure:: img/manage-styles.png

#. Click the :guilabel:`Edit Layer` button, and then Manage under Styles.

   .. figure:: img/manage-edit-styles.png

#. Click the name of a style in the left-hand list to select it and move it to the right-hand list.

#. Click a style in the right-hand list, and click the arrows between the lists to remove a style.

#. Click the Update available Styles button to save changes.

Replace a Layer
^^^^^^^^^^^^^^^

Replacing a layer allows you to upload a new layer, taking the place of the current later.

#. Click the :guilabel:`Edit Layer` button, and select the Replace button.

   .. figure:: img/layer-remove-replace.png

#. Follow the instructions to upload a new layer.

Remove a Layer
^^^^^^^^^^^^^^

Removing a layer will delete it completely from Boundless Exchange.

#. Click the :guilabel:`Edit Layer` button, and select Remove.

#. Verify your selection by selecting the :guilabel:`Yes, I am sure` button.

   .. figure:: img/verify-remove-layer.png

Downloading Data from a Layer
-----------------------------

Within Exchange, there are two ways to extract data and metadata, download a layer or download a layer’s metadata. This facilitates the flow of geospatial data in (import) and out (export) of Exchange.

Download Data
^^^^^^^^^^^^^

#. Click the :guilabel:`Download Layer` button.

#. Select the format in which you’d like the data to be downloaded. Exchange currently offers 12 different formats for use in multiple geospatial platforms.

   .. figure:: img/download-layer-options.png

3. Save the file to your computer when the Save As dialog box opens.

Metadata
^^^^^^^^

#. Click the :guilabel:`Download Metadata` button.

#. Select the format in which you’d like to download the metadata.

   .. figure:: img/download-meta-options.png
