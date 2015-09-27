.. swagger:tag:: versions-identity
   :summary: API versions

   

.. swagger:tag:: tokens
   :summary: Tokens

   Manages tokens.

.. swagger:tag:: service-catalog
   :summary: Service catalog

   Manages the catalog of services.

.. swagger:tag:: endpoints
   :summary: Endpoints

   Manages endpoints.

.. swagger:tag:: domains
   :summary: Domains

   Manages domains.
   
   Domains represent collections of users, groups, and projects. Each
   is owned by exactly one domain. Users, however, can be associated
   with multiple projects by granting roles to the user on a project,
   including projects owned by other domains.
   
   Each domain defines a namespace where certain API-visible name
   attributes exist, which affects whether those names must be
   globally unique or unique within that domain. In the Identity API,
   the uniqueness of the following attributes is as follows:
   
   - *Domain name* . Globally unique across all domains.
   
   - *Role name* . Globally unique across all domains.
   
   - *User name* . Unique within the owning domain.
   
   - *Project name* . Unique within the owning domain.
   
   - *Group name* . Unique within the owning domain.

.. swagger:tag:: projects
   :summary: Projects

   Manages projects.

.. swagger:tag:: users
   :summary: Users

   Manages users.

.. swagger:tag:: groups
   :summary: Groups

   Manages groups.

.. swagger:tag:: credentials
   :summary: Credentials

   Manages credentials.

.. swagger:tag:: roles
   :summary: Roles

   Manages roles.

.. swagger:tag:: policies
   :summary: Policies

   Manages policies.
   
   You can encode policy rule sets into a blob to be consumed by
   remote services. To do so, set ``type`` to ``application/json`` and
   specify policy rules as JSON strings in a ``blob`` . For example:
   
   "blob": { "default": false }Or:
   
   "blob": { "foobar_user": [ "role:compute-user" ] }

.. swagger:tag:: regions-v3
   :summary: Regions

   Manages regions.
   
   A region is a general division of an OpenStack deployment. You can
   associate zero or more sub-regions with a region to create a tree-
   like structured hierarchy.
   
   Although a region does not have a geographical connotation, a
   deployment can use a geographical name for a region, such as ``us-
   east`` .

