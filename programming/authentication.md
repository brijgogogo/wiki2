# Authentication

== NTLM ==
NT Lan Manager - challenge-response authentication protocol.
1. First, the client establishes a network path to the server and sends a NEGOTIATE_MESSAGE advertising its capabilities.
2. Next, the server responds with CHALLENGE_MESSAGE which is used to establish the identity of the client.
3. Finally, the client responds to the challenge with an AUTHENTICATE_MESSAGE.

https://en.wikipedia.org/wiki/NT_LAN_Manager

== Kerberos ==
1. Client requests an authentication ticket (TGT) from the Key Distribution Center (KDC)
2. The KDC verifies the credentials and sends back an encrypted TGT and session key.
3. The TGT is encrypted using the Ticket Grantic Service (TGS) secret-key
4. The client stores the TGT and when it expires the local session manager will request another TGT.
When client requests access to a service/resource on the network:
5. Client sends the current TGT to the TGS with the Service Principal Name (SPN) of the resource the client wants to access.
6. The KDC verifies the TGT of the user and that the user has access to the service.
7. TGS sends a valid session key for the service to the client.
8. Client forwards the session key to the service to prove the user has access and service grants access.

TGS = KDC

With Single-Sign-On (SSO), you prove your identity once to Kerberos, and then Kerberos passes your TGT to other services or machines as proof of your identity.

Kerberos is more secure than NTLM.

Active Directory (AD)
- Directory service for Windows domain networks.


Directory Service / Name service: maps the names of network resources to their respective network addresses. A directory server or name server is a server which provides such a service.
https://en.wikipedia.org/wiki/Directory_service


== WS-Fed ==

== SAML ==


== OAuth ==
delegation protocol - You are directed to other site (like Facebook), not to authenticate yourself, but for the application to do certain things on your behalf. It's things like accessing your name and email address.

== OpenID Connect ==
Your perform token exchange. Kinds of tokens:
1. ID token - user's identity
2. access token - lets you authenticate yourself to a Web API. You put this token in the Authorization header of your request. Access tokens are usually short-lives (30 mins to 1 hour).
3. refresh token - long-lived token that you use to get new access tokens. You have to ask for it using a specific scope called "offline_access".

Most common token format: JWT
* JWT token - JSON strings encoded in base64 format, has three parts separated by "." character:
  - first part: header
  - second part: body
  - third part: signature
When an IdP issues a JWT token, it signs it with its private key, and using its public key, the consumer of that token can ensure that the token hasn’t been tampered with.

