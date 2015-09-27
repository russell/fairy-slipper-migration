.. swagger:tag:: versions
   :synopsis: API versions

   

.. swagger:tag:: extensions
   :synopsis: API extensions (extensions)

   

.. swagger:tag:: limits
   :synopsis: Limits (limits)

   Shows absolute limits for a tenant.
   
   An absolute limit value of ``-1`` indicates that theabsolute limit
   for the item is infinite.

.. swagger:tag:: volumes
   :synopsis: Volumes (volumes)

   A volume is a detachable block storage device similar to a USBhard
   drive. You can attach a volume to one instance at a time.
   
   The ``snapshot_id`` and ``source_volid`` parameters specify the ID
   of the snapshot or volume from which thisvolume originates. If the
   volume was not created from a snapshot orsource volume, these
   values are null.
   
   When you create, list, update, or delete volumes, the possible
   statusvalues are:
   
   Volume statuses
   
   +------------------+---------------------------------------------------------+
   | Status           | Description                                             |
   +------------------+---------------------------------------------------------+
   | creating         | The volume is being created.                            |
   +------------------+---------------------------------------------------------+
   | available        | The volume is ready to be attached to aninstance.       |
   +------------------+---------------------------------------------------------+
   | attaching        | The volume is attaching to aninstance.                  |
   +------------------+---------------------------------------------------------+
   | in-use           | The volume is attached to aninstance.                   |
   +------------------+---------------------------------------------------------+
   | deleting         | The volume is being deleted.                            |
   +------------------+---------------------------------------------------------+
   | error            | An error occurred during volumecreation.                |
   +------------------+---------------------------------------------------------+
   | error_deleting   | An error occurred during volumedeletion.                |
   +------------------+---------------------------------------------------------+
   | backing-up       | The volume is being backed up.                          |
   +------------------+---------------------------------------------------------+
   | restoring-backup | A backup is being restored to thevolume.                |
   +------------------+---------------------------------------------------------+
   | error_restoring  | An error occurred during backup restoration to avolume. |
   +------------------+---------------------------------------------------------+
   | error_extending  | An error occurred while attempting to extend avolume.   |
   +------------------+---------------------------------------------------------+

.. swagger:tag:: volume-type-access
   :synopsis: Volume type access (volumes)

   Creates private volumes.
   
   By default, volumes are public. To create a private volume, setthe
   ``is_public`` boolean field to ``false`` atvolume creation time. To
   control access to a private volume, youadd a project to or remove a
   project from the volume. Privatevolume types without projects are
   only accessible by users with theadministrative role and context.

.. swagger:tag:: volume-api-v2-volumes-actions
   :synopsis: Volume actions (volumes, action)

   Performs actions for a specified volume. Extends the size,
   resetsstatuses for, sets image metadata, or removes image metadata
   froma volume.

.. swagger:tag:: ext-backups
   :synopsis: Backups (backups)

   A backup is a full copy of a volume stored in an external
   service.The service can be configured. The only supported service
   isObject Storage. A backup can subsequently be restored from
   theexternal service to either the same volume that the backup
   wasoriginally taken from or to a new volume. Backup and
   restoreoperations can only be carried out on volumes that are in
   anunattached and available state.
   
   When you create, list, or delete backups, these statusvalues are
   possible:
   
   Backup statuses
   
   +-----------------+---------------------------------------------------------+
   | Status          | Description                                             |
   +-----------------+---------------------------------------------------------+
   | creating        | The backup is being created.                            |
   +-----------------+---------------------------------------------------------+
   | available       | The backup is ready to be restored to avolume.          |
   +-----------------+---------------------------------------------------------+
   | deleting        | The backup is being deleted.                            |
   +-----------------+---------------------------------------------------------+
   | error           | An error has occurred with thebackup.                   |
   +-----------------+---------------------------------------------------------+
   | restoring       | The backup is being restored to avolume.                |
   +-----------------+---------------------------------------------------------+
   | error_restoring | An error occurred during backup restoration to avolume. |
   +-----------------+---------------------------------------------------------+
   
   
   
   In the event of an error, more information about the errorcan be
   found in thefail_reasonfield forthe backup.

.. swagger:tag:: ext-backups-actions-v2
   :synopsis: Backup actions (backups, action)

   Force-deletes a backup.

.. swagger:tag:: os-backend-capabilities-v2
   :synopsis: Capabilities for storage back ends (capabilities)

   Shows capabilities for a storage back end.

.. swagger:tag:: quota-sets
   :synopsis: Quota sets extension (os-quota-sets)

   Administrators only, depending on policy settings.
   
   Shows, updates, and deletes quotas for a tenant.

.. swagger:tag:: qos-v2-qos-specs
   :synopsis: Quality of service (QoS) specifications (qos-specs)

   Administrators only, depending on policy settings.
   
   Creates, lists, shows details for, associates, disassociates, sets
   keys,unsets keys, and deletes quality of service (QoS)
   specifications.

.. swagger:tag:: types
   :synopsis: Volume types (types)

   

.. swagger:tag:: snapshots
   :synopsis: Volume snapshots (snapshots)

   A snapshot is a point-in-time copy of the data that avolume
   contains.
   
   When you create, list, or delete snapshots, these statusvalues are
   possible:
   
   Snapshot statuses
   
   +----------------+--------------------------------------------+
   | Status         | Description                                |
   +----------------+--------------------------------------------+
   | creating       | The snapshot is being created.             |
   +----------------+--------------------------------------------+
   | available      | The snapshot is ready to be used.          |
   +----------------+--------------------------------------------+
   | deleting       | The snapshot is being deleted.             |
   +----------------+--------------------------------------------+
   | error          | An error occurred during snapshotcreation. |
   +----------------+--------------------------------------------+
   | error_deleting | An error occurred during snapshotdeletion. |
   +----------------+--------------------------------------------+

.. swagger:tag:: volume-manage
   :synopsis: Volume manage extension (os-volume-manage)

   Creates volumes by using existing storage instead of allocatingnew
   storage.

.. swagger:tag:: os-vol-image-meta-v2
   :synopsis: Volume image metadata extension (os-vol-image-meta)

   Shows image metadata that is associated with a specified volume.

