.. swagger:tag:: versions-images
   :synopsis: API versions

   

.. swagger:tag:: images
   :synopsis: Images

   Creates, lists, updates, and deletes images.
   
   Image operations show all fields in the response body. Any field
   with no value is set to ``null`` value (JSON null data type).
   
   The possible status values for images are:
   
   Image status
   
   +----------------+---------------------------------------------------------------------+
   | Status         | Description                                                         |
   +----------------+---------------------------------------------------------------------+
   | queued         | The Image service reserved an image ID for the image in the         |
   |                | registry but has not uploaded any image data.                       |
   +----------------+---------------------------------------------------------------------+
   | saving         | The Image service is currently uploading the raw data for the       |
   |                | image.                                                              |
   +----------------+---------------------------------------------------------------------+
   | active         | The image is active and fully available in the Image service.       |
   +----------------+---------------------------------------------------------------------+
   | killed         | An error occurred during the upload of image data.                  |
   +----------------+---------------------------------------------------------------------+
   | deleted        | The Image service retains information about the image but the image |
   |                | is no longer available for use.                                     |
   +----------------+---------------------------------------------------------------------+
   | pending_delete | Similar to the ``deleted`` status. An image in this state is not    |
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

   Gets a JSON-schema document that represents an images or image
   entity.

.. swagger:tag:: metadef-resourcetype
   :synopsis: Metadata definition resource types

   Lists resource types. Also, creates, lists, and removes resource
   type associations in a specified namespace. (Since API v2.0.)

.. swagger:tag:: metadef-namespace
   :synopsis: Metadata definition namespaces

   Creates, lists, gets details for, updates, and deletes metadata
   definition namespaces. Defines namespaces that can contain property
   definitions, object definitions, and resource type associations.
   (Since API v2.0.)

.. swagger:tag:: metadef-property
   :synopsis: Metadata definition properties

   Creates, lists, gets details for, updates, and deletes metadata
   definition properties. (Since API v2.0.)

.. swagger:tag:: metadef-object
   :synopsis: Metadata definition objects

   Creates, lists, gets details for, updates, and deletes metadata
   definition objects. (Since API v2.0.)

.. swagger:tag:: metadef-tag
   :synopsis: Metadata definition tags

   Creates, lists, gets details for, updates, and deletes metadata
   definition tags. (Since API v2.0.)

.. swagger:tag:: metadef-schemas
   :synopsis: Metadata definition schemas

   Gets a JSON-schema document that represents a metadata definition
   entity.

.. swagger:tag:: os-tasks-v2
   :synopsis: Tasks

   Creates, lists, and gets details for tasks. (Since API v2.2.)

