.. swagger:tag:: extensions
   :synopsis: Extensions

   Lists available Networking API v2.0 extensions and shows details
   for a specified extension.

.. swagger:tag:: quotas
   :synopsis: Quotas extension (quotas)

   Lists, shows information for, updates, and resets quotas.

.. swagger:tag:: network-provider
   :synopsis: Networks provider extended attributes (networks)

   Lists, creates, shows information for, updates, and deletes
   networks.

.. swagger:tag:: network-multi-provider
   :synopsis: Networks multiple provider extension (networks)

   Enables administrative users to define multiple physical bindings
   for an OpenStack Networking network and list or show details for
   networks with multiple physical bindings.
   
   You cannot update any ``provider`` attributes. If you try to do so,
   an error occurs.
   
   To delete a network with multiple physical bindings, issue a normal
   delete network request.
   
   To define multiple physical bindings for a network, include a
   ``segments`` list in the request body of a ``POST /v2.0/networks``
   request. Each element in the ``segments`` list has the same
   structure as the provider network attributes. These attributes are
   ``provider:network_type`` , ``provider:physical_network`` , and
   ``provider:segmentation_id`` . The validation rules for these
   attributes are the same as for the Networks provider extended
   attributes . You cannot use both extensions at the same time.
   
   The NSX and ML2 plug-ins support this extension. With the ML2 plug-
   in, you can specify multiple VLANs for a specified network, a VXLAN
   tunnel ID, and a VLAN.

.. swagger:tag:: network-vlan-transparency
   :synopsis: VLAN transparency extension (networks)

   Enables plug-ins that support VLAN transparency to deliver VLAN-
   transparent trunk networks. If the service does not support VLAN
   transparency and a user requests a VLAN-transparent network, the
   plug-in refuses to create one and returns an appropriate error to
   the user.
   
   You cannot update the ``vlan-transparent`` attribute. If you try to
   do so, an error occurs.
   
   To delete a VLAN-transparent network, issue a normal delete network
   request.
   
   The ML2 plug-in currently supports this extension. With the ML2
   plug-in, you can set the ``vlan-transparent`` attribute to either
   ``true`` or ``false`` .

.. swagger:tag:: port-binding
   :synopsis: Ports binding extended attributes (ports)

   Lists, creates, shows information for, and updates ports.

.. swagger:tag:: security-groups
   :synopsis: Security groups (security-groups)

   Lists, creates, shows information for, updates, and deletes
   security groups.

.. swagger:tag:: security_group-ruless
   :synopsis: Security group rules (security-group-rules)

   Lists, creates, shows information for, and deletes security group
   rules.

.. swagger:tag:: layer3
   :synopsis: Layer-3 networking

   Routes packets between subnets, forwards packets from internal
   networks to external ones, and accesses instances from external
   networks through floating IPs.
   
   This extension introduces these resources:
   
   - **router** . A logical entity for forwarding packets across
     internal subnets and NATting them on external networks through an
     appropriate external gateway.
   
   - **floatingip** . An external IP address that is mapped to a port
     that is attached to an internal network.

.. swagger:tag:: metering
   :synopsis: Metering labels and rules

   Creates, modifies, and deletes OpenStack Layer3 metering labels and
   rules.

.. swagger:tag:: lbaas
   :synopsis: Load-Balancer-as-a-Service (LBaaS) 1.0 (STABLE)

   The LBaaS version 1.0 extension pairs with the Networking 2.0 API
   to enable OpenStack tenants to manage load balancers for their VMs.
   With this extension, you can load-balance client traffic from one
   network to application services, such as VMs, on the same network.
   
   Use this extension to create and manage virtual IP addresses
   (VIPs), pools, members of a pool, health monitors associated with a
   pool, and view status of a resource.
   
   Load balancer statuses
   
   +----------------+-----------------------------------------------------------------+
   | Status         | Description                                                     |
   +----------------+-----------------------------------------------------------------+
   | ACTIVE         | Resource is ready and active.                                   |
   +----------------+-----------------------------------------------------------------+
   | PENDING_CREATE | Resource is being created.                                      |
   +----------------+-----------------------------------------------------------------+
   | PENDING_UPDATE | Resource is being updated.                                      |
   +----------------+-----------------------------------------------------------------+
   | PENDING_DELETE | Resource is pending deletion.                                   |
   +----------------+-----------------------------------------------------------------+
   | INACTIVE       | Resource was created but is not active.                         |
   +----------------+-----------------------------------------------------------------+
   | ERROR          | Object within the service is not working. The ``error_details`` |
   |                | attribute provides an explanation for the error, its cause, and |
   |                | possibly a solution.                                            |
   +----------------+-----------------------------------------------------------------+

.. swagger:tag:: lbaas
   :synopsis: Load-Balancer-as-a-Service (LBaaS) 2.0 (EXPERIMENTAL)

   The LBaaS version 2.0 extension pairs with the Networking 2.0 API
   to enable OpenStack tenants to manage load balancers for their VMs.
   With this extension you can load-balance client traffic from one
   network to application services, such as VMs, on the same network.
   
   Use this extension to create and manage load balancers, listeners,
   pools, members of a pool, and health monitors associated with a
   pool and view status of a resource.
   
   Load balancer statuses
   
   +----------------+-----------------------------------------------------------------+
   | Status         | Description                                                     |
   +----------------+-----------------------------------------------------------------+
   | ACTIVE         | Resource is ready and active.                                   |
   +----------------+-----------------------------------------------------------------+
   | PENDING_CREATE | Resource is being created.                                      |
   +----------------+-----------------------------------------------------------------+
   | PENDING_UPDATE | Resource is being updated.                                      |
   +----------------+-----------------------------------------------------------------+
   | PENDING_DELETE | Resource is pending deletion.                                   |
   +----------------+-----------------------------------------------------------------+
   | INACTIVE       | Resource was created but is not active.                         |
   +----------------+-----------------------------------------------------------------+
   | ERROR          | Object within the service is not working. The ``error_details`` |
   |                | attribute provides an explanation for the error, its cause, and |
   |                | possibly a solution.                                            |
   +----------------+-----------------------------------------------------------------+

.. swagger:tag:: subnetpools-ext
   :synopsis: Subnet pools extension (subnetpools)

   Manages subnet pools

.. swagger:tag:: vpnaas
   :synopsis: Virtual-Private-Network-as-a-Service (VPNaaS) 2.0 (CURRENT)

   The VPNaaS extension enables OpenStack tenants to extend private
   networks across the public telecommunication infrastructure.
   
   This initial implementation of the VPNaaS extension provides:
   
   - Site-to-site VPN that connects two private networks.
   
   - Multiple VPN connections per tenant.
   
   - IKEv1 policy support with 3des, aes-128, aes-256, or aes-192
     encryption.
   
   - IPSec policy support with 3des, aes-128, aes-192, or aes-256
     encryption, sha1 authentication, ESP, AH, or AH-ESP transform
     protocol, and tunnel or transport mode encapsulation.
   
   - Dead Peer Detection (DPD) with hold, clear, restart, disabled, or
     restart-by-peer actions.
   
   This extension introduces these resources:
   
   - ``service`` . A parent object that associates VPN with a specific
     subnet and router.
   
   - ``ikepolicy`` . The Internet Key Exchange (IKE) policy that
     identifies the authentication and encryption algorithm to use
     during phase one and two negotiation of a VPN connection.
   
   - ``ipsecpolicy`` . The IP security policy that specifies the
     authentication and encryption algorithm and encapsulation mode to
     use for the established VPN connection.
   
   - ``ipsec-site-connection`` . Details for the site-to-site IPsec
     connection, including the peer CIDRs, MTU, authentication mode,
     peer address, DPD settings, and status.

.. swagger:tag:: extraroute
   :synopsis: Extra routes

   Adds extra routes to the ``router`` resource.
   
   You can update a router to add a set of next hop IPs and
   destination CIDRs.
   
   The next hop IP must be part of a subnet to which the router
   interfaces are connected. You can configure the ``routes``
   attribute on only update operations.

