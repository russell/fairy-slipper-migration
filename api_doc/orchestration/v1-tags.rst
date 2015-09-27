.. swagger:tag:: general-info
   :summary: General API information

   Authenticated calls that target a known URI but that use an HTTP
   method that the implementation does not support return a
   ``405Method Not Allowed`` error code. In addition, the HTTP
   ``OPTIONS`` method is supported for each known URI. In both cases,
   the ``Allow`` response header indicates the HTTP methods that are
   supported for the resource.

.. swagger:tag:: heat-versions
   :summary: API versions

   

.. swagger:tag:: stacks
   :summary: Stacks

   

.. swagger:tag:: stack-actions
   :summary: Stack actions

   Performs non-lifecycle operations on the stack. Specify the action
   in the request body.

.. swagger:tag:: stack-resources
   :summary: Stack resources

   

.. swagger:tag:: stack-events
   :summary: Stack events

   

.. swagger:tag:: stack-templates
   :summary: Templates

   

.. swagger:tag:: build-info
   :summary: Build info

   

.. swagger:tag:: software-config
   :summary: Software configuration

   

.. swagger:tag:: service-status
   :summary: Manage service

   

