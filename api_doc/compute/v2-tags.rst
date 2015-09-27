.. swagger:tag:: versions
   :summary: API versions

   Lists information for all API versions.

.. swagger:tag:: limits
   :summary: Limits

   Gets rate and absolute limits.
   
   An absolute limit value of ``-1`` indicates that the absolute limit
   for the item is infinite.

.. swagger:tag:: extensions
   :summary: Extensions

   Lists available Compute API v2 extensions and shows details for a
   specified extension.

.. swagger:tag:: servers
   :summary: Servers

   Lists, creates, gets details for, updates, and deletes servers.
   
   - **Passwords**
     When you create a server, you can specify a password through the
     optional adminPass attribute. The specified password must meet
     the complexity requirements set by your OpenStack Compute
     provider. The server might enter an ``ERROR`` state if the
     complexity requirements are not met. In this case, a client might
     issue a change password action to reset the server password.
     If you do not specify a password, a randomly generated password
     is assigned and returned in the response object. This password is
     guaranteed to meet the security requirements set by the compute
     provider. For security reasons, the password is not returned in
     subsequent GET calls.
   
   - **Server metadata**
     You can specify custom server metadata at server launch time. The
     maximum size for each metadata key-value pair is 255 bytes. The
     maximum number of key-value pairs that can be supplied per server
     is determined by the compute provider. You can query this value
     through the ``maxServerMeta`` absolute limit.
   
   - **Server networks**
     You can specify networks to which the server connects at launch
     time. You can specify one or more networks. Users can also
     specify a specific port on the network or the fixed IP address to
     assign to the server interface.
     You can use both IPv4 and IPv6 addresses as access addresses and
     you can assign both addresses simultaneously. You can update
     access addresses after you create a server.
   
   - **Server personality**
     You can customize the personality of a server instance by
     injecting data into its file system. For example, you might want
     to insert ssh keys, set configuration files, or store data that
     you want to retrieve from inside the instance. This feature
     provides a minimal amount of launch-time personalization. If you
     require significant customization, create a custom image.
     Follow these guidelines when you inject files:
    - The maximum size of the file path data is 255 bytes.
   
    - Encode the file contents as a Base64 string. The compute providers
      determines the maximum size of the file contents. This value can
      vary based on the image that is used to create the server.
      The maximum limit refers to the number of bytes in the decoded
      data and not to the number of characters in the encoded data.
   
    - You can inject only text files. You cannot inject binary or ZIP
      files into a new build.
   
    - The ``maxPersonality`` absolute limit defines the maximum number
      of file path and content pairs that you can supply. The compute
      provider determines this value.
   
    - The ``maxPersonalitySize`` absolute limit is a byte limit that is
      guaranteed to apply to all images in the deployment. Providers
      can set additional per-image personality limits.
   
      The file injection might not occur until after the server is
      built and booted.
      During file injection, any existing files that match specified
      files are renamed to include the BAK extension appended with a
      time stamp. For example, if the ``/etc/passwd`` file exists, it
      is backed up as ``/etc/passwd.bak.1246036261.5785`` .
      After file injection, only system administrators can access
      personality files. For example, on Linux, all files have root as
      the owner and the root group as the group owner, and allow only
      user and group read access (chmod 440).
   
   - **Server access addresses**
     In a hybrid environment, the underlying implementation might not
     control the IP address of a server. Instead, the access IP
     address might be part of the dedicated hardware; for example, a
     router/NAT device. In this case, the addresses provided by the
     implementation cannot actually be used to access the server (from
     outside the local LAN). Here, a separate access address might be
     assigned at creation time to provide access to the server. This
     address might not be directly bound to a network interface on the
     server and might not necessarily appear when you query the server
     addresses. Nonetheless, clients that must access the server
     directly are encouraged to do so through an access address.

.. swagger:tag:: server-metadata
   :summary: Server metadata

   Shows details for, sets, updates, and deletes server metadata and
   metadata items.

.. swagger:tag:: server-addresses
   :summary: Server addresses

   Lists addresses for a specified server or a specified server and
   network.

.. swagger:tag:: server-actions
   :summary: Server actions

   Performs actions for a specified server: Changes administrator
   password, reboots, rebuilds, and resizes servers, and creates an
   image from a server.

.. swagger:tag:: flavors
   :summary: Flavors

   Lists available flavors and gets details for a specified flavor. A
   flavor is a hardware configuration for a server. Each flavor is a
   unique combination of disk space and memory capacity.

.. swagger:tag:: images
   :summary: Images

   Lists, gets details for, and deletes images.
   
   Also, sets, lists, gets details for, and deletes image metadata.
   
   An image is a collection of files that you use to create and
   rebuild a server. By default, operators provide pre-built operating
   system images. You can also create custom images: See Computer
   server actions.

.. swagger:tag:: image-metadata
   :summary: Image metadata

   Shows details for, sets, updates, and deletes image metadata or
   metadata items.

