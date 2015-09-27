.. swagger:tag:: versions
   :synopsis: API versions

   Lists information for all API versions.

.. swagger:tag:: limits
   :synopsis: Limits

   Gets rate and absolute limits.
   
   An absolute limit value of ``-1`` indicates that theabsolute limit
   for the item is infinite.

.. swagger:tag:: extensions
   :synopsis: Extensions

   Lists available Compute API v2 extensions and shows details for a
   specifiedextension.

.. swagger:tag:: servers
   :synopsis: Servers

   Lists, creates, gets details for, updates, and deletes servers.
   
   - **Passwords**
     When you create a server, you can specify a passwordthrough the
     optionaladminPassattribute. The specified password must meet the
     complexityrequirements set by your OpenStack Compute provider.
     Theserver might enter an ``ERROR`` state if thecomplexity
     requirements are not met. In this case, aclient might issue a
     change password action to reset theserver password.
     If you do not specify a password, a randomly generatedpassword is
     assigned and returned in the response object. Thispassword is
     guaranteed to meet the security requirements setby the compute
     provider. For security reasons, the password isnot returned in
     subsequentGETcalls.
   
   - **Server metadata**
     You can specify custom server metadata at server launch time. The
     maximum sizefor each metadata key-value pair is 255 bytes. The
     maximum number of key-valuepairs that can be supplied per server
     is determined by the compute provider. Youcan query this value
     through the ``maxServerMeta`` absolutelimit.
   
   - **Server networks**
     You can specify networks to which the server connects at launch
     time. You canspecify one or more networks. Users can also specify
     a specific port on thenetwork or the fixed IP address to assign
     to the server interface.
     You can use both IPv4 and IPv6 addresses as access addresses and
     you canassign both addresses simultaneously. You can update
     access addresses afteryou create a server.
   
   - **Server personality**
     You can customize the personality of a server instance
     byinjecting data into its file system. For example, youmight want
     to insert ssh keys, set configuration files, orstore data that
     you want to retrieve from inside theinstance. This feature
     provides a minimal amount oflaunch-time personalization. If you
     require significantcustomization, create a custom image.
     Follow these guidelines when you inject files:
    - The maximum size of the file path data is 255 bytes.
   
    - Encode the file contents as a Base64 string. Thecompute providers
      determines the maximum size ofthe file contents. This value can
      vary based onthe image that is used to create the server.
      The maximum limit refers to the number ofbytes in the decoded
      data and not to thenumber of characters in the encoded data.
   
    - You can inject only text files. You cannot injectbinary or ZIP
      files into a new build.
   
    - The ``maxPersonality`` absolute limitdefines the maximum number of
      file path andcontent pairs that you can supply. The
      computeprovider determines this value.
   
    - The ``maxPersonalitySize`` absolute limitis a byte limit that is
      guaranteed to apply to allimages in the deployment. Providers
      can setadditional per-image personality limits.
   
      The file injection might not occur until after the serveris
      built and booted.
      During file injection, any existing files that matchspecified
      files are renamed to include the BAK extensionappended with a
      time stamp. For example, if the ``/etc/passwd`` file exists, it
      is backed up as ``/etc/passwd.bak.1246036261.5785`` .
      After file injection, only system administrators canaccess
      personality files. For example, on Linux, all fileshave root as
      the owner and the root group as the groupowner, and allow only
      user and group read access (chmod440).
   
   - **Server access addresses**
     In a hybrid environment, the underlying implementationmight not
     control the IP address of a server. Instead, theaccess IP address
     might be part of the dedicated hardware;for example, a router/NAT
     device. In this case, theaddresses provided by the implementation
     cannot actuallybe used to access the server (from outside the
     local LAN).Here, a separateaccess addressmight be assigned at
     creation time to provide access tothe server. This address might
     not be directly bound to anetwork interface on the server and
     might not necessarilyappear when you query the server addresses.
     Nonetheless,clients that must access the server directly
     areencouraged to do so through an access address.

.. swagger:tag:: server-metadata
   :synopsis: Server metadata

   Shows details for, sets, updates, and deletes server metadata and
   metadata items.

.. swagger:tag:: server-addresses
   :synopsis: Server addresses

   Lists addresses for a specified server or a specified server
   andnetwork.

.. swagger:tag:: server-actions
   :synopsis: Server actions

   Performs actions for a specified server: Changes
   administratorpassword, reboots, rebuilds, and resizes servers, and
   creates animage from a server.

.. swagger:tag:: flavors
   :synopsis: Flavors

   Lists available flavors and gets details for a specified flavor.
   Aflavor is a hardware configuration for a server. Each flavor is
   aunique combination of disk space and memory capacity.

.. swagger:tag:: images
   :synopsis: Images

   Lists, gets details for, and deletes images.
   
   Also, sets, lists, gets details for, and deletes image metadata.
   
   An image is a collection of files that you use to create and
   rebuild a server. Bydefault, operators provide pre-built operating
   system images. You can also create customimages: See Computer
   server actions.

.. swagger:tag:: image-metadata
   :synopsis: Image metadata

   Shows details for, sets, updates, and deletes image metadata or
   metadata items.

