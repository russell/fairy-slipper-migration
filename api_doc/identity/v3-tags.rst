.. swagger:tag:: versions-identity
   :synopsis: API versions

   

.. swagger:tag:: tokens
   :synopsis: Tokens

   Manages tokens.

.. swagger:tag:: service-catalog
   :synopsis: Service catalog

   Manages the catalog of services.

.. swagger:tag:: endpoints
   :synopsis: Endpoints

   Manages endpoints.

.. swagger:tag:: domains
   :synopsis: Domains

   Manages domains.
   
   Domains represent collections of users, groups, and projects. Each
   is owned by exactlyone domain. Users, however, can be associated
   with multiple projects by granting rolesto the user on a project,
   including projects owned by other domains.
   
   Each domain defines a namespace where certain API-visible name
   attributes exist, whichaffects whether those names must be globally
   unique or unique within that domain. In theIdentity API, the
   uniqueness of the following attributes is as follows:
   
   - *Domain name*. Globally unique across alldomains.
   
   - *Role name*. Globally unique across alldomains.
   
   - *User name*. Unique within the owningdomain.
   
   - *Project name*. Unique within the owningdomain.
   
   - *Group name*. Unique within the owningdomain.

.. swagger:tag:: projects
   :synopsis: Projects

   Manages projects.

.. swagger:tag:: users
   :synopsis: Users

   Manages users.

.. swagger:tag:: groups
   :synopsis: Groups

   Manages groups.

.. swagger:tag:: credentials
   :synopsis: Credentials

   Manages credentials.

.. swagger:tag:: roles
   :synopsis: Roles

   Manages roles.

.. swagger:tag:: policies
   :synopsis: Policies

   Manages policies.
   
   You can encode policy rule sets into a blob to be consumed byremote
   services. To do so, set ``type`` to ``application/json`` and
   specify policy rules as JSON strings in a ``blob`` . For example:
   
   ::
      "blob": {           "default": false       }
   Or:
   
   ::
      "blob": {           "foobar_user": [               "role:compute-user"           ]       }

.. swagger:tag:: regions-v3
   :synopsis: Regions

   Manages regions.
   
   A region is a general division of an OpenStack deployment.You can
   associate zero or more sub-regions with a regionto create a tree-
   like structured hierarchy.
   
   Although a region does not have a geographical connotation,
   adeployment can use a geographical name for a region, such as ``us-
   east`` .

