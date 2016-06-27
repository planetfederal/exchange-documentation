## Working with Layers

Exchange allows you to upload layers. The following are the supported __Vector__ formats:

* ESRI Shapefile
* CSV (Comma Separated Value)
* Google Earth KML
* GeoJSON

The following are the supported __Raster__ formats:

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

All of the following filetypes can be uploaded by being placed in a __Zip Archive (.zip)__.

Once the layers are uploaded, they will be available to other users in Exchange.

### Uploading a layer

1. Select the ![layers-link](img/layers/layers-link.png) link on the top toolbar. This will bring up the Explore Layers page.

    ![explore-layers](img/layers/explore-layers.png)

2. Select the ![upload-layers](img/layers/upload-layers.png) button. This will bring up the upload form.

3. Either browse to the files to be uploaded or drag and drop them in the browser. Note that many files consist of multiple files to be complete. If you are uploading an ESRI Shapefile, then you need to include the .dbf, .prj, .shp, and .shx files.

    ![upload-form](img/layers/upload-form.png)

4. Click on the ![choose-file](img/layers/choose-file.png) button. This will bring up a local file dialog. Navigate to your data folder and select the files composing the geospatial layer. Note that some data formats consist of multiple files.

5. Exchange has the ability to restrict who can view, edit, and manage layers. On the right side of the page, under Who can view and download this data?, select Any registered user. This will ensure that anonymous view access is disabled.

6. In the same area, under "Who can edit data for this layer?", type a user or users in the field that you want to restrict edit access to. This will ensure that only specific users are able to edit the data in the layer.

    ![permissions-edit](img/layers/permissions-edit.png)

7. If no destination is selected, the files will be imported into the default spatial data store for Exchange. This will always be the destination for raster data.

    If you have vector data that you want to have time enabled, then check the box for ![configure-time](img/layers/configure-time.png).

    If you have vector data that you want to be versioned, then check the box for ![import-geogig](img/layers/import-geogig.png). The form will update to provide a dropdown menu for existing GeoGit repositories. To use an existing repository as the destination, select it in the dropdown. In order to import the data into a new GeoGig repository:

    1. type the name of the repository
    2. select that name in the dropdown so it appears in the field.
    ![repo-field](img/layers/repo-field.png)

8. Select the ![upload-files-button](img/layers/upload-files-button.png) button to upload the data and create a layer. A dialog will display ![geoserver-step](img/layers/geoserver-step.png) showing the progress of the upload.

    If you selected ![configure-time](img/layers/configure-time.png), then a new window will open for __Time Options__.

    ![time-options](img/layers/time-options.png)

    A feature can currently support one or two time attributes. If a single attribute is used, the feature is considered relevant at that single point in time. If two attributes are used, the second attribute represents the end of a valid period for the feature.

    A time attribute can be one of:

    * An existing date
    * Text that can be converted to a timestamp
    * A number representing a year

    <br />
    The 'best guess' will handle date and optional time variants of ISO-8601. In terms of the formatting flags noted above, these are:

    ![best-guess-format](img/layers/best-guess-format.png)

9. Your layer has been uploaded to Exchange. Now you will be able to access to the its info page (clicking on the ![layer-info-button](img/layers/layer-info-button.png) button), access to its metadata edit form (clicking on the ![edit-metadata-button](img/layers/edit-metadata-button.png) button) or to manage the styles for it (clicking on the ![manage-styles-button](img/layers/manage-styles-button.png) button).

### Layer information

* TODO

#### Layer Detail Tabs

* TODO

### Editing Metadata and Managing Layers

* TODO

#### Edit Metadata

* TODO

#### Edit Permissions

* TODO

#### Manage Styles

* TODO

#### Replace a Layer

* TODO

#### Remove a Layer

* TODO

### Downloading Data from a Layer

* TODO

#### Data

* TODO

#### Metadata

* TODO
