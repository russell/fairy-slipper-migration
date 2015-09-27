.. swagger:tag:: alarms
   :synopsis: Alarms

   Lists, creates, gets details for, updates, and deletes alarms.

.. swagger:tag:: meters
   :synopsis: Meters

   Creates, lists all, and lists samples for meters. Computes and
   lists statistics for samples in a specified time range.
   
   For list operations, if you do not explicitly set the ``limit``
   query parameter, a default limit is applied. The default limit is
   the ``default_api_return_limit`` configuration option value.

.. swagger:tag:: samples
   :synopsis: Samples

   Lists all samples and gets information for a specified sample.
   
   For list operations, if you do not explicitly set the ``limit``
   query parameter, a default limit is applied. The default limit is
   the ``default_api_return_limit`` configuration option value.

.. swagger:tag:: resources
   :synopsis: Resources

   Lists all and gets information for resources.

.. swagger:tag:: capabilities
   :synopsis: Capabilities

   Gets information for API and storage capabilities.
   
   The Telemetry service enables you to store samples, events, and
   alarm definitions in supported database back ends. The
   ``capabilities`` resource enables you to list the capabilities that
   a database supports.
   
   The ``capabilities`` resource returns a flattened dictionary of
   capability properties, each with an associated boolean value. A
   value of ``true`` indicates that the corresponding capability is
   available in the back end.
   
   Optionally, you can configure separate database back ends for
   samples, events, and alarm definitions. The ``capabilities``
   response body shows a value of ``true`` to indicate that the
   samples, events, or alarm definitions database is ready to use in a
   production environment.

