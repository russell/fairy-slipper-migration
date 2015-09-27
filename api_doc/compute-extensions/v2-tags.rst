.. swagger:tag:: block-device-mapping
   :synopsis: Servers with block device mapping format(servers)

   Creates a server with a block device mapping.

.. swagger:tag:: createserverext
   :synopsis: Servers with configuration drive (servers)

   Extends servers and images with a configuration drive.

.. swagger:tag:: consoles
   :synopsis: Servers console (servers)

   Gets a console for a server instance.

.. swagger:tag:: console-output
   :synopsis: Servers console output (servers)

   Gets console output for a server instance.

.. swagger:tag:: extended-server-attributes
   :synopsis: Servers extended attributes (servers)

   Shows metadata for servers.

.. swagger:tag:: ext-az
   :synopsis: Servers with extended availability zones(servers)

   Shows the instance availability zone for compute nodes (nova-
   compute). Internal services appear in their own
   *internal*availability zone.

.. swagger:tag:: extended-status
   :synopsis: Servers extended status (servers)

   Shows the ``vm_state`` , ``task_state`` , and ``power_state``
   extended status information in detailedserver responses.

.. swagger:tag:: ext-ips
   :synopsis: Servers with IP type (servers)

   Shows the type of the IP addresses that are assigned to aninstance.
   Type is either fixed or floating.

.. swagger:tag:: multi-server-create
   :synopsis: Servers multiple create (servers)

   Creates one or more servers with an optional reservation ID.
   Therequest and response examples show how to create multiple
   serverswith or without a reservation ID.

.. swagger:tag:: server-ext-ips-mac
   :synopsis: Servers with mac_addr extended attribute(servers)

   Creates, shows information for, and lists servers with the
   ``mac_addr`` extended attribute.

.. swagger:tag:: scheduler-hints
   :synopsis: Servers with scheduler hints (servers)

   Creates a server with scheduler hints.

.. swagger:tag:: admin-actions
   :synopsis: Servers administrative actions (servers, action)

   Administrator only. Performs actions on a server. Specifythe action
   in the request body.

.. swagger:tag:: deferred-delete
   :synopsis: Servers deferred delete (servers, action)

   Force-deletes a server and restores a deleted server.

.. swagger:tag:: rescue
   :synopsis: Servers rescue and unrescue (servers, action)

   Puts a server into rescue mode and unrescues a server inrescue
   mode.

.. swagger:tag:: server-shelve
   :synopsis: Servers shelve (servers, action)

   Shelves running servers, restores shelved servers, and
   removesshelved servers.
   
   Shelving is useful when you have an unused instance that you
   wouldlike to keep for later use. For example, at the end of a work
   weekyou can shelve an instance and at the start of the next week
   you canunshelve it.
   
   Your cloud provider might bill you for a shelved server.
   
   Use the ``shelve`` action to shelve a server. Allassociated data
   and resources are kept but anything still in memoryis not retained.
   
   Use the ``unshelve`` action to restore a shelved instance.
   
   Use the ``shelveOffload`` action to remove a shelvedinstance that
   you no longer need.

.. swagger:tag:: server-start-stop
   :synopsis: Servers start and stop (servers, action)

   Starts a stopped server and stops a running server.

.. swagger:tag:: diagnostics
   :synopsis: Servers diagnostics (servers, diagnostics)

   Gets the usage data for a server.

.. swagger:tag:: disk-config
   :synopsis: Servers and images with disk config (servers,images)

   Extends servers with the ``diskConfig`` attribute.

.. swagger:tag:: availability-zone
   :synopsis: Servers availability zones (servers, os-availability-zone)

   Gets availability zone information.

.. swagger:tag:: instance-actions
   :synopsis: Servers instance actions (servers, os-instance-actions)

   Lists available actions for a specified server. Administrators
   canget details for a specified action for a specified server.

.. swagger:tag:: server-password
   :synopsis: Servers password (servers, os-server-password)

   Gets and resets the encrypted administrative password set
   throughthe metadata service.

.. swagger:tag:: virtual-interfaces
   :synopsis: Servers virtual interfaces (servers, os-virtual-interfaces)

   Lists the virtual interfaces for a specified server instance.

.. swagger:tag:: volume-attachments
   :synopsis: Servers with volume attachments (servers, os-volume_attachments)

   Attaches volumes that are created through the volume API to
   serverinstances. Also, lists volume attachments for a server
   instance,gets volume details for a volume attachment, and detaches
   avolume.

.. swagger:tag:: os-volume_boot
   :synopsis: Server boot from volume (os-volumes_boot)

   Starts an instance by using a volume with the ``bootable``
   attribute. The image on the volume is usedto boot the instance.

.. swagger:tag:: flavormanage
   :synopsis: Flavors create and delete (flavors)

   Creates, lists, and deletes flavors.

.. swagger:tag:: flv-disabled
   :synopsis: Flavors with disabled attribute (flavors)

   Lists and gets details for flavors. Includes the ``disabled``
   extended attribute.

.. swagger:tag:: flavorextradata
   :synopsis: Flavors with extended attributes (flavors)

   Creates, gets details for, and lists details for flavors.
   Includestherxtx_factor,OS-FLV-EXT-DATA:ephemeral,andswapextended
   attributes.

.. swagger:tag:: flavor-rxtx
   :synopsis: Flavors with rxtx_factor extended attribute(flavors)

   Creates, gets details for, and lists details for flavors.
   Includestherxtx_factorextended attribute, which isrelated to
   configured bandwidth cap values.

.. swagger:tag:: flavor-extra-specs
   :synopsis: Flavors with extra-specs (flavors, os-extra-specs)

   Lists, creates, and updates the extra-specs or keys for a flavor.

.. swagger:tag:: flavor-access
   :synopsis: Flavors access (flavors, os-flavor-access)

   Creates and gets details for private flavors. Also, lists, adds,and
   removes tenants' access to private flavors.

.. swagger:tag:: flavor-swap
   :synopsis: Flavors swap (flavors, os-flavor-swap)

   Creates and lists flavors with a swap value. Requires the ``os-
   flavormanage`` extension. The swap value is the amount ofswap disk
   space, in GBs, to allocate to a server.

.. swagger:tag:: ext-img-size
   :synopsis: Images with size attribute (images)

   Lists details for available images and gets details for aspecified
   image. Includes the ``OS-EXT-IMG-SIZE:size`` extended attribute,
   which shows the image size.

.. swagger:tag:: used-limits
   :synopsis: Limits with project usage (limits)

   Extends limits to show the project usage. Shows information suchas
   RAM and instance quotas usage.

.. swagger:tag:: used-limits-for-admins
   :synopsis: Limits with project usage for administrators(limits)

   Extends limits to enable administrators to show the project
   usagefor a specified customer project ID. Shows information such as
   RAMand instance quotas usage.

.. swagger:tag:: agents
   :synopsis: Guest agents (os-agents)

   Creates, updates, and deletes guest agents.
   
   Use guest agents to access files on the disk, configurenetworking,
   and run other applications and scripts in the guestwhile it runs.
   This hypervisor-specific extension is not currentlyenabled for KVM.
   Use of guest agents is possible only if theunderlying service
   provider uses the Xen driver.

.. swagger:tag:: aggregates
   :synopsis: Host aggregates (os-aggregates)

   Creates and manages host aggregates. An aggregate assigns
   metadatato groups of compute nodes. Aggregates are only visible to
   thecloud provider.

.. swagger:tag:: baremetal-ext-status
   :synopsis: Bare metal nodes (os-baremetal-nodes)

   Bare metal nodes.

.. swagger:tag:: certificates
   :synopsis: Root certificates (os-certificates)

   Creates and shows details for a root certificate.

.. swagger:tag:: cloudpipe
   :synopsis: Cloudpipe (os-cloudpipe)

   Manages virtual VPNs for projects.

.. swagger:tag:: coverage
   :synopsis: Coverage reports (os-coverage)

   Shows coverage reports.

.. swagger:tag:: extended-networks
   :synopsis: Network extended attributes (os-extended-networks)

   Creates, shows details for, and lists networks with
   extendedattributes.

.. swagger:tag:: fixed-ips
   :synopsis: Fixed IPs (os-fixed-ips)

   Shows data for a specified fixed IP, such as host name, CIDR,
   andaddress. Also, reserves and frees a fixed IP address.

.. swagger:tag:: floating-ip-dns
   :synopsis: Floating IP DNS records (os-floating-ip-dns)

   Manages DNS records that are associated with IP addresses that
   areallocated by the floating IPs extension. Requests are
   dispatchedto a DNS driver selected at startup.

.. swagger:tag:: floating-ip-pools
   :synopsis: Floating IP pools (os-floating-ip-pools)

   Manages groups of floating IPs.

.. swagger:tag:: floating-ips
   :synopsis: Floating IPs (os-floating-ips)

   Assigns and allocates floating IP addresses to instancesthat run in
   an OpenStack cloud.

.. swagger:tag:: floating-ips-bulk
   :synopsis: Floating IPs bulk (os-floating-ips-bulk)

   Bulk-creates, deletes, and lists floating IPs. By default, thepool
   is named nova. Use theos-floating-ip-poolsextension to view
   available pools.

.. swagger:tag:: hosts
   :synopsis: Hosts (os-hosts)

   Manages physical hosts.

.. swagger:tag:: hypervisors
   :synopsis: Hypervisors (os-hypervisors)

   Displays extra statistical information from the machine that
   hoststhe hypervisor through the API for the hypervisor (XenAPI
   orKVM/libvirt).

.. swagger:tag:: hypervisor-status
   :synopsis: Hypervisor with status (os-hypervisor-status)

   Displays extra statistical information including status from
   themachine that hosts the hypervisor through the API for
   thehypervisor (XenAPI or KVM/libvirt).

.. swagger:tag:: interface
   :synopsis: Attach interfaces (os-interface)

   Creates, lists, gets details for, and deletes port interfaces.

.. swagger:tag:: keypairs
   :synopsis: Keypairs (os-keypairs)

   Generates, imports, and deletes SSH keys.
   
   To add a keypair to a server, specify the ``key_name`` parameter in
   the request body in acreate serverrequest.

.. swagger:tag:: migrations
   :synopsis: Migrations (os-migrations)

   Administrators only. Gets in-progress migrations for a region
   orspecified cell in a region.

.. swagger:tag:: networks
   :synopsis: Networks (os-networks)

   Shows network information for and deletes networks.
   Also,disassociates a network from a project in VLAN mode.

.. swagger:tag:: quota-class-sets
   :synopsis: Quota class (os-quota-class-sets)

   Provides quota classes management support.

.. swagger:tag:: quota-sets
   :synopsis: Quota sets (os-quota-sets)

   Administrators only, depending on policy settings.
   
   Shows quotas for a tenant and shows and updates default quotas.

.. swagger:tag:: security-groups
   :synopsis: Security groups (os-security-groups)

   Lists, lists by server, creates, shows information for, updates,and
   deletes security groups.

.. swagger:tag:: os-security-group-rules
   :synopsis: Rules for security group (os-security-group-rules)

   Creates and deletes security group rules.

.. swagger:tag:: security-group-default-rules
   :synopsis: Rules for default security group(os-security-group-default-rules)

   Lists, shows information for, and creates default securitygroup
   rules.

.. swagger:tag:: server-groups
   :synopsis: Server groups (os-server-groups)

   Lists, shows information for, creates, and deletes server groups.

.. swagger:tag:: services
   :synopsis: Manage services (os-services)

   Lists, enables, and disables Compute services in all hosts.

.. swagger:tag:: simple-tenant-usage
   :synopsis: Usage reports (os-simple-tenant-usage)

   Reports usage statistics on compute and storage resources.

.. swagger:tag:: volume
   :synopsis: Volume extension (os-volumes, os-snapshots)

   Manages volumes and snapshots for use with the Compute API.

