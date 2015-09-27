.. swagger:tag:: extensions
   :synopsis: Extensions

   Lists available Networking API v2.0 extensions and shows details
   for a specifiedextension.

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
   for an OpenStackNetworking network and list or show details for
   networks with multiple physicalbindings.
   
   You cannot update any ``provider``attributes. If you try to do so,
   anerror occurs.
   
   To delete a network with multiple physical bindings, issue a normal
   delete networkrequest.
   
   To define multiple physical bindings for a network, include a
   ``segments``list in the request body of a
   ``POST/v2.0/networks``request. Each element in the
   ``segments``listhas the same structure as the provider network
   attributes. These attributes are ``provider:network_type``,
   ``provider:physical_network``, and ``provider:segmentation_id``.
   The validation rules for theseattributes are the same as for
   theNetworks provider extended attributes. You cannot use both
   extensions at thesame time.
   
   The NSX and ML2 plug-ins support this extension. With the ML2 plug-
   in, you can specifymultiple VLANs for a specified network, a VXLAN
   tunnel ID, and a VLAN.

.. swagger:tag:: network-vlan-transparency
   :synopsis: VLAN transparency extension (networks)

   Enables plug-ins that support VLAN transparency to deliverVLAN-
   transparent trunk networks. If the service does not support
   VLANtransparency and a user requests a VLAN-transparent network,
   theplug-in refuses to create one and returns an appropriateerror to
   the user.
   
   You cannot update the ``vlan-transparent``attribute. Ifyou try to
   do so, an error occurs.
   
   To delete a VLAN-transparent network, issue a normal deletenetwork
   request.
   
   The ML2 plug-in currently supports this extension. With the
   ML2plug-in, you can set the ``vlan-transparent``attributeto either
   ``true``or ``false``.

.. swagger:tag:: port-binding
   :synopsis: Ports binding extended attributes (ports)

   Lists, creates, shows information for, and updates ports.

.. swagger:tag:: security-groups
   :synopsis: Security groups (security-groups)

   Lists, creates, shows information for, updates, and deletessecurity
   groups.

.. swagger:tag:: security_group-ruless
   :synopsis: Security group rules (security-group-rules)

   Lists, creates, shows information for, and deletes security
   grouprules.

.. swagger:tag:: layer3
   :synopsis: Layer-3 networking

   Routes packets between subnets, forwards packets from internal
   networks to externalones, and accesses instances from external
   networks through floating IPs.
   
   This extension introduces these resources:
   
   - **router**. A logical entity for forwardingpackets across internal
     subnets and NATting them on external networks through
     anappropriate external gateway.
   
   - **floatingip**. An external IP address that ismapped to a port
     that is attached to an internal network.

.. swagger:tag:: metering
   :synopsis: Metering labels and rules

   Creates, modifies, and deletes OpenStack Layer3 metering labels and
   rules.

.. swagger:tag:: lbaas
   :synopsis: Load-Balancer-as-a-Service (LBaaS) 1.0 (STABLE)

   The LBaaS version 1.0 extension pairs with the Networking 2.0 APIto
   enable OpenStack tenants to manage load balancers for theirVMs.
   With this extension, you can load-balance client traffic fromone
   network to application services, such as VMs, on the samenetwork.
   
   Use this extension to create and manage virtual IP addresses(VIPs),
   pools, members of a pool, health monitors associated witha pool,
   and view status of a resource.
   
   Load balancer statuses
   
   +----------------+------------------------------------------------------------------+
   | Status         | Description                                                      |
   +----------------+------------------------------------------------------------------+
   | ACTIVE         | Resource is ready and active.                                    |
   +----------------+------------------------------------------------------------------+
   | PENDING_CREATE | Resource is being created.                                       |
   +----------------+------------------------------------------------------------------+
   | PENDING_UPDATE | Resource is being updated.                                       |
   +----------------+------------------------------------------------------------------+
   | PENDING_DELETE | Resource is pending deletion.                                    |
   +----------------+------------------------------------------------------------------+
   | INACTIVE       | Resource was created but is not active.                          |
   +----------------+------------------------------------------------------------------+
   | ERROR          | Object within the service is not working. The                    |
   |                | ``error_details``attribute provides anexplanation for the error, |
   |                | its cause, andpossibly a solution.                               |
   +----------------+------------------------------------------------------------------+

.. swagger:tag:: lbaas
   :synopsis: Load-Balancer-as-a-Service (LBaaS) 2.0 (EXPERIMENTAL)

   The LBaaS version 2.0 extension pairs with the Networking 2.0 APIto
   enable OpenStack tenants to manage load balancers for theirVMs.
   With this extension you can load-balance client traffic fromone
   network to application services, such as VMs, on the samenetwork.
   
   Use this extension to create and manage load balancers,
   listeners,pools, members of a pool, and health monitors associated
   with apool and view status of a resource.
   
   Load balancer statuses
   
   +----------------+------------------------------------------------------------------+
   | Status         | Description                                                      |
   +----------------+------------------------------------------------------------------+
   | ACTIVE         | Resource is ready and active.                                    |
   +----------------+------------------------------------------------------------------+
   | PENDING_CREATE | Resource is being created.                                       |
   +----------------+------------------------------------------------------------------+
   | PENDING_UPDATE | Resource is being updated.                                       |
   +----------------+------------------------------------------------------------------+
   | PENDING_DELETE | Resource is pending deletion.                                    |
   +----------------+------------------------------------------------------------------+
   | INACTIVE       | Resource was created but is not active.                          |
   +----------------+------------------------------------------------------------------+
   | ERROR          | Object within the service is not working. The                    |
   |                | ``error_details``attribute provides anexplanation for the error, |
   |                | its cause, and possibly asolution.                               |
   +----------------+------------------------------------------------------------------+

.. swagger:tag:: subnetpools-ext
   :synopsis: Subnet pools extension (subnetpools)

   Manages subnet pools

.. swagger:tag:: vpnaas
   :synopsis: Virtual-Private-Network-as-a-Service (VPNaaS) 2.0 (CURRENT)

   The VPNaaS extension enables OpenStack tenants to extend
   privatenetworks across the public telecommunication infrastructure.
   
   This initial implementation of the VPNaaS extension provides:
   
   - Site-to-site VPN that connects twoprivate networks.
   
   - Multiple VPN connections per tenant.
   
   - IKEv1 policy support with 3des, aes-128, aes-256,or aes-192
     encryption.
   
   - IPSec policy support with 3des, aes-128, aes-192, oraes-256
     encryption, sha1 authentication, ESP, AH, or AH-ESPtransform
     protocol, and tunnel or transport modeencapsulation.
   
   - Dead Peer Detection (DPD) with hold, clear,restart, disabled, or
     restart-by-peer actions.
   
   This extension introduces these resources:
   
   - ``service``. A parent object that associates VPN with a
     specificsubnet and router.
   
   - ``ikepolicy``. The InternetKey Exchange (IKE) policy that
     identifies theauthentication and encryption algorithm to use
     duringphase one and two negotiation of a VPN connection.
   
   - ``ipsecpolicy``. The IP security policy thatspecifies the
     authentication and encryption algorithm andencapsulation mode to
     use for the established VPNconnection.
   
   - ``ipsec-site-connection``. Details forthe site-to-site IPsec
     connection, including the peerCIDRs, MTU, authentication mode,
     peer address, DPDsettings, and status.

.. swagger:tag:: extraroute
   :synopsis: Extra routes

   Adds extra routes to the ``router``resource.
   
   You can update a router to add a set of next hop IPs and
   destinationCIDRs.
   
   The next hop IP must be part of a subnet towhich the router
   interfaces are connected. You canconfigure the ``routes``attribute
   on onlyupdate operations.

