.. swagger:tag:: inherit
   :synopsis: OS-INHERIT extension (OS-INHERIT)

   Enables projects to inherit role assignments from either
   theirowning domain or projects that are higher in the hierarchy.
   
   The OS-INHERIT extension was extended in API v3.4 to
   allowinheritance from projects in addition to inheritance from
   domains.To access project inheritance, the Identity service server
   mustrun at least API v3.4.

.. swagger:tag:: kds
   :synopsis: Key Distribution Server (KDS) extension (OS-KDS)

   The Key Distribution Server (KDS) is a trusted third party
   thatgenerates and securely distributes signing and encryption keys
   tocommunicating parties. These shared keys enable parties
   toexchange authenticated, confidential messages. KDS is an
   integralpart of the RPC message security implementation. To
   establish atrusted relationship between the party and the KDS, a
   properlyauthorized user, such as a cloud administrator, must assign
   along-term shared key to the communicating party. Assigning a keyto
   a party requires assigning an identity to that party in theKDS. An
   identity includes a unique party name and the associatedlong-term
   shared key. This party name is used to identify a partywhen it
   communicates with KDS or another party.
   
   The KDS enables two individual parties or one individual party anda
   group party to exchange secure messages. To get keys so that itcan
   communicate with another party, a party makes an
   authenticatedrequest to KDS for a ticket. The KDS returns an
   encrypted ticketto the requesting party. The KDS encrypts the
   ticket with thelong-term shared key that is associated with that
   party. Only theassociated party or the KDS itself can decrypt the
   ticket.
   
   The KDS issues a ticket that contains a copy of the
   sharedencryption and signing keys. These keys are for the source
   party,which is the party that requests the ticket. The ticket
   alsocontains a payload that is intended for the destination
   party,which is the party with whom the source party wants
   tocommunicate. This payload contains the information that
   thedestination party can use to derive the shared encryption
   andsigning keys. When the destination party is:
   
   - An individual. The payload is encrypted with the long-termshared
     key that is associated with the destination party.
   
   - A group. The payload is encrypted with a shared group keythat the
     KDS makes available to all members of the group.This encryption
     enables the destination party to trustthat the information in the
     payload was supplied by theKDS.
   
   When the source party is ready to communicate with the
   destinationparty, it sends this encrypted payload to the
   destination partyalong with whatever data it has protected with the
   shared signingand encryption keys. The destination party can
   decrypt the payloadand derive the shared encryption and signing
   keys by using thepayload information. Both parties have a copy of
   the sharedsigning and encryption keys that are trusted as being
   issued bythe KDS. The destination party uses these shared keys
   toauthenticate and decrypt the data sent by the source party.
   
   Other guidelines:
   
   - When a source party must send secure messages to
     multiplerecipients, an authorized user can define a KDS group for
     therecipients. Membership in a group is determined by comparing
     aparty name with the group name. The party is considered to be
     amember if the party name matches ``<group name>.*`` .For
     example, a party named ``scheduler.host.example.com`` is
     considered a member of the ``scheduler`` group. Thismethod is the
     same method that is used to name message queues inOpenStack.
   
   - When a source party requests a ticket for a destination partythat
     is a group, KDS generates a short-lived group key and assigns
     itto the group. This group key is used to encrypt the payload in
     theticket, which contains the information that the destination
     partyuses to derive the shared signing and encryption keys.
   
   - When an individual destination party must decrypt the payload
     thatit receives from the source party as a part of a group
     message, itmakes an authenticated request to KDS to get the
     short-lived groupkey. If the requester is a member of the target
     group, KDSprovides the short-lived group key encrypted with the
     long-termshared key associated with the individual destination
     party. Theindividual destination party can then decrypt the group
     key, whichenables it to decrypt the payload and derive the shared
     signingand encryption keys to use to authenticate and decrypt the
     datasent by the source party.
   
   - When a sender gets keys to send a message to a group, allgroup
     members and the sender share the signing andencryption keys,
     which makes it impossible for anindividual destination party to
     determine whether amessage was sent by the source party or by
     anotherdestination party who is a group member. The
     destinationparty can confirm only that the message was sent by
     aparty who has the shared signing and encryption keys. Whena
     sender uses keys to send a message to a group, all groupmembers
     must trust other members to operate in good faith.
   
   The signing and encryption keys that communicating parties shareare
   short-lived. The life span of these keys is defined by avalidity
   period that is set by the KDS when it issues the ticket.A suggested
   reasonable default validity period is 15 minutes,though the
   implementation determines the appropriate validityperiod.
   
   After the validity period for the keys expires, a party
   shouldrefuse to use those keys to prevent the use of compromised
   keys.This requires the source party to request a new ticket from
   theKDS to get a new set of keys. An implementation can implement
   agrace period to account for clock skew between parties. This
   graceperiod enables a destination party to accept messages that
   userecently expired keys. If you use a grace period, its
   durationshould be five or fewer minutes.
   
   A key server, unlike a pure public key-based system, can
   regulatethe encryption and signing key exchange. When keys are
   requested,the key server actively distributes keys to communicating
   parties,applies access control, and denies communication between
   arbitrarypeers in the system. This enables centralized access
   control,prevents unauthorized communication, and eliminates the
   need toperform post-authentication access control and policy
   lookups onthe receiving side.
   
   The KDS requires that all ticket requests are authenticated
   and,where appropriate, data is encrypted. You must pass any time
   stampvalue to the API as aUTCISO8601date and time string that
   includes microseconds. Forexample, ``2012-03-26T10:01:01.720000`` .
   
   The default algorithms for message authentication andencryption
   are, respectively, HMAC-SHA-256 and AES-128-CBC.Therefore, the
   default block size is 128 bit.
   
   The source party that requests a ticket must send the encrypted
   ``esek`` payload to the destination party. The source
   anddestination strings used when requesting the ticket also must
   besent to the destination party to enable it to derive the
   sharedsigning end encryption keys. The messaging implementation
   isresponsible for transferring this data to the destination party.
   
   The key derivation used to generate the shared signing
   andencryption keys uses the Hashed Message Authentication
   Code(HMAC)-based key derivation function (HKDF) standard,
   asdescribed in RFC 5869. The destination party must use the HKDF
   ``expand`` function by using the information that itreceives from
   the source party to complete derivation of theshared signing and
   encryption keys. The inputs to the HKDF ``expand`` function are:
   
   ::
      HKDF-Expand(esek.key, info, 256)
   The ``info`` input for the HKDF ``expand`` function is a string
   that concatenates the source, destination,and ``esek.timestamp``
   strings by using a comma( ``,`` ) separator between each element.
   The followingexample shows a valid ``info`` string where
   ``scheduler.host.example.com`` is the source,
   ``compute.host.example.com`` is the destination, and
   ``2012-03-26T10:01:01.720000`` is the ``esek.timestamp`` :
   
   ::
      scheduler.host.example.com,compute.host.example.com,2012-03-26T10:01:01.720000
   The output of the HKDF expand function is an array of bytes of
   256bit length. The first half is the signing key, and the second
   halfis the encryption key.
   
   Create and delete requests for long-term keys are restricted
   toauthorized users, such as cloud administrators. The
   authenticationand authorization for these requests is left up to
   theimplementation, though the implementation should leverage
   theIdentity API for these purposes.

.. swagger:tag:: oauth1
   :synopsis: OAuth extension (OS-OAUTH1)

   Enables users to delegate roles to third-party consumersthrough
   theThe OAuth 1.0 Protocol.
   
   A user is an Identity API user who delegates its roles and
   whoauthorizes request tokens. A consumer is a third-party
   applicationthat uses OAuth to access a protected resource. An
   OAuth-derivedtoken enables admin users to act on behalf of the
   authorizinguser. A request token is a token that the consumer uses
   to getauthorization from the user and exchanges with an OAuth
   verifierfor an access token. The OAuth verifier is a required
   string thatis provided with the corresponding request token in
   exchange foran access token. An access token is a token that the
   consumer usesto request Identity API tokens on behalf of the
   authorizing userinstead of using the credentials for the user.
   
   Request and access tokens use token keys to identify themselves.For
   OpenStack purposes, the token key is the token ID. Theconsumer uses
   a token secret to establish ownership of a specifiedtoken. Both
   request and access tokens have token secrets.
   
   Delegated authentication through OAuth occurs as follows:
   
   - A user creates a consumer.
   
   
   - The consumer gets an unauthorized request token.Then, the consumer
     uses the request token toinitiate user authorization.
   
   
   - The user authorizes the request token.
   
   
   - The consumer exchanges the authorized requesttoken and the OAuth
     verifier for an accesstoken.
   
    The authorizing user receives the request tokenkey from the
     consumer out-of-band.
   
   
   - The consumer uses the access token to request anIdentity API
     token.

.. swagger:tag:: trust
   :synopsis: Trust extension (OS-TRUST)

   Creates a trust.
   
   A trust is an OpenStack Identity extension that enables
   delegationand, optionally, impersonation through ``keystone`` .
   Atrust extension defines a relationship between a trustor
   andtrustee. A trustor is the user who delegates a limited set
   oftheir own rights to another user. A trustee is the user
   whosetrust is being delegated to, for a limited time.
   
   The trust can eventually enable the trustee to impersonate
   thetrustor. For security reasons, some safety measures are added.
   Forexample, if a trustor loses a given role, any trusts and
   therelated tokens that the user issued with that role
   areautomatically revoked.
   
   For more information, seeUse trusts.

