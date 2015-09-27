.. swagger:tag:: versions
   :synopsis: API versions

   

.. swagger:tag:: extensions
   :synopsis: API extensions (extensions)

   

.. swagger:tag:: limits
   :synopsis: Limits (limits)

   Shows absolute limits for a tenant.
   
   An absolute limit value of ``-1`` indicates that the absolute limit
   for the item is infinite.

.. swagger:tag:: volumes
   :synopsis: Volumes (volumes)

   A volume is a detachable block storage device similar to a USB hard
   drive. You can attach a volume to one instance at a time.
   
   The ``snapshot_id`` and ``source_volid`` parameters specify the ID
   of the snapshot or volume from which this volume originates. If the
   volume was not created from a snapshot or source volume, these
   values are null.
   
   When you create, list, update, or delete volumes, the possible
   status values are:
   
   Volume statuses
   
   +------------------+----------------------------------------------------------+
   | Status           | Description                                              |
   +------------------+----------------------------------------------------------+
   | creating         | The volume is being created.                             |
   +------------------+----------------------------------------------------------+
   | available        | The volume is ready to be attached to an instance.       |
   +------------------+----------------------------------------------------------+
   | attaching        | The volume is attaching to an instance.                  |
   +------------------+----------------------------------------------------------+
   | in-use           | The volume is attached to an instance.                   |
   +------------------+----------------------------------------------------------+
   | deleting         | The volume is being deleted.                             |
   +------------------+----------------------------------------------------------+
   | error            | An error occurred during volume creation.                |
   +------------------+----------------------------------------------------------+
   | error_deleting   | An error occurred during volume deletion.                |
   +------------------+----------------------------------------------------------+
   | backing-up       | The volume is being backed up.                           |
   +------------------+----------------------------------------------------------+
   | restoring-backup | A backup is being restored to the volume.                |
   +------------------+----------------------------------------------------------+
   | error_restoring  | An error occurred during backup restoration to a volume. |
   +------------------+----------------------------------------------------------+
   | error_extending  | An error occurred while attempting to extend a volume.   |
   +------------------+----------------------------------------------------------+

.. swagger:tag:: volume-type-access
   :synopsis: Volume type access (volumes)

   Creates private volumes.
   
   By default, volumes are public. To create a private volume, set the
   ``is_public`` boolean field to ``false`` at volume creation time.
   To control access to a private volume, you add a project to or
   remove a project from the volume. Private volume types without
   projects are only accessible by users with the administrative role
   and context.

.. swagger:tag:: volume-api-v2-volumes-actions
   :synopsis: Volume actions (volumes, action)

   Performs actions for a specified volume. Extends the size, resets
   statuses for, sets image metadata, or removes image metadata from a
   volume.

.. swagger:tag:: ext-backups
   :synopsis: Backups (backups)

   A backup is a full copy of a volume stored in an external service.
   The service can be configured. The only supported service is Object
   Storage. A backup can subsequently be restored from the external
   service to either the same volume that the backup was originally
   taken from or to a new volume. Backup and restore operations can
   only be carried out on volumes that are in an unattached and
   available state.
   
   When you create, list, or delete backups, these status values are
   possible:
   
   Backup statuses
   
   +-----------------+----------------------------------------------------------+
   | Status          | Description                                              |
   +-----------------+----------------------------------------------------------+
   | creating        | The backup is being created.                             |
   +-----------------+----------------------------------------------------------+
   | available       | The backup is ready to be restored to a volume.          |
   +-----------------+----------------------------------------------------------+
   | deleting        | The backup is being deleted.                             |
   +-----------------+----------------------------------------------------------+
   | error           | An error has occurred with the backup.                   |
   +-----------------+----------------------------------------------------------+
   | restoring       | The backup is being restored to a volume.                |
   +-----------------+----------------------------------------------------------+
   | error_restoring | An error occurred during backup restoration to a volume. |
   +-----------------+----------------------------------------------------------+
   
   In the event of an error, more information about the error can be
   found in the fail_reason field for the backup.

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
   keys, unsets keys, and deletes quality of service (QoS)
   specifications.

.. swagger:tag:: types
   :synopsis: Volume types (types)

   

.. swagger:tag:: snapshots
   :synopsis: Volume snapshots (snapshots)

   A snapshot is a point-in-time copy of the data that a volume
   contains.
   
   When you create, list, or delete snapshots, these status values are
   possible:
   
   Snapshot statuses
   
   +----------------+---------------------------------------------+
   | Status         | Description                                 |
   +----------------+---------------------------------------------+
   | creating       | The snapshot is being created.              |
   +----------------+---------------------------------------------+
   | available      | The snapshot is ready to be used.           |
   +----------------+---------------------------------------------+
   | deleting       | The snapshot is being deleted.              |
   +----------------+---------------------------------------------+
   | error          | An error occurred during snapshot creation. |
   +----------------+---------------------------------------------+
   | error_deleting | An error occurred during snapshot deletion. |
   +----------------+---------------------------------------------+

.. swagger:tag:: volume-manage
   :synopsis: Volume manage extension (os-volume-manage)

   Creates volumes by using existing storage instead of allocating new
   storage.

.. swagger:tag:: os-vol-image-meta-v2
   :synopsis: Volume image metadata extension (os-vol-image-meta)

   Shows image metadata that is associated with a specified volume.

