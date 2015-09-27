.. swagger:tag:: versions-images
   :synopsis: API versions

   

.. swagger:tag:: images
   :synopsis: Images

   Creates, lists, updates, and deletes images.
   
   Image operations show all fields in the response body. Any
   fieldwith no value is set to ``null``value (JSON null datatype).
   
   The possible status values for images are:
   
   Image status
   
   +----------------+---------------------------------------------------------------------+
   | Status         | Description                                                         |
   +----------------+---------------------------------------------------------------------+
   | queued         | The Image service reserved an image ID for theimage in the registry |
   |                | but has not uploaded anyimage data.                                 |
   +----------------+---------------------------------------------------------------------+
   | saving         | The Image service is currently uploading the rawdata for the image. |
   +----------------+---------------------------------------------------------------------+
   | active         | The image is active and fully available in theImage service.        |
   +----------------+---------------------------------------------------------------------+
   | killed         | An error occurred during the upload of image data.                  |
   +----------------+---------------------------------------------------------------------+
   | deleted        | The Image service retains information about theimage but the image  |
   |                | is no longer available foruse.                                      |
   +----------------+---------------------------------------------------------------------+
   | pending_delete | Similar to the ``deleted``status. Animage in this state is not      |
   |                | recoverable.                                                        |
   +----------------+---------------------------------------------------------------------+

.. swagger:tag:: image-data
   :synopsis: Image data

   Uploads and downloads raw image data.

.. swagger:tag:: image-tags
   :synopsis: Image tags

   Adds and deletes image tags.

.. swagger:tag:: members
   :synopsis: Members

   

.. swagger:tag:: image-schemas
   :synopsis: Image schemas

   Gets a JSON-schema document that represents an images orimage
   entity.

.. swagger:tag:: metadef-resourcetype
   :synopsis: Metadata definition resource types

   Lists resource types. Also, creates, lists, and removes
   resourcetype associations in a specified namespace. (Since API
   v2.0.)

.. swagger:tag:: metadef-namespace
   :synopsis: Metadata definition namespaces

   Creates, lists, gets details for, updates, and deletes
   metadatadefinition namespaces. Defines namespaces that can
   containproperty definitions, object definitions, and resource
   typeassociations. (Since API v2.0.)

.. swagger:tag:: metadef-property
   :synopsis: Metadata definition properties

   Creates, lists, gets details for, updates, and deletes
   metadatadefinition properties. (Since API v2.0.)

.. swagger:tag:: metadef-object
   :synopsis: Metadata definition objects

   Creates, lists, gets details for, updates, and deletes
   metadatadefinition objects. (Since API v2.0.)

.. swagger:tag:: metadef-tag
   :synopsis: Metadata definition tags

   Creates, lists, gets details for, updates, and deletes
   metadatadefinition tags. (Since API v2.0.)

.. swagger:tag:: metadef-schemas
   :synopsis: Metadata definition schemas

   Gets a JSON-schema document that represents a metadata
   definitionentity.

.. swagger:tag:: os-tasks-v2
   :synopsis: Tasks

   Creates, lists, and gets details for tasks. (Since API v2.2.)

