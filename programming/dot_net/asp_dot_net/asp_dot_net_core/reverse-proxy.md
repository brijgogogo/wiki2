# reverse proxy
A reverse proxy server receives HTTP requests from the network and forwards them to Kestrel.

Even if a reverse proxy server isn't required, using a reverse proxy server might be a good choice.

A reverse proxy:
- Can limit the exposed public surface area of the apps that it hosts.
- Provide an additional layer of configuration and defense.
- Might integrate better with existing infrastructure.
- Simplify load balancing and secure communication (HTTPS) configuration. Only the reverse proxy server requires an X.509 certificate, and that server can communicate with your app servers on the internal network using plain HTTP.

