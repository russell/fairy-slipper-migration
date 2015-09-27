.. swagger:tag:: general-info
   :synopsis: General API information

   Authenticated calls that target a known URI but that use an HTTP
   method that the implementation does not support return a ``405
   Method Not Allowed`` error code. In addition, the HTTP ``OPTIONS``
   method is supported for each known URI. In both cases, the
   ``Allow`` response header indicates the HTTP methods that are
   supported for the resource.

.. swagger:tag:: heat-versions
   :synopsis: API versions

   

.. swagger:tag:: stacks
   :synopsis: Stacks

   

.. swagger:tag:: stack-actions
   :synopsis: Stack actions

   Performs non-lifecycle operations on the stack. Specify the action
   in the request body.

.. swagger:tag:: stack-resources
   :synopsis: Stack resources

   

.. swagger:tag:: stack-events
   :synopsis: Stack events

   

.. swagger:tag:: stack-templates
   :synopsis: Templates

   

.. swagger:tag:: build-info
   :synopsis: Build info

   

.. swagger:tag:: software-config
   :synopsis: Software configuration

   

.. swagger:tag:: service-status
   :synopsis: Manage service

   

