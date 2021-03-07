# wcf configuration

* Endpoints: refers to ABC of WCF, contains:
  * Address : how the client gets to service
  * Binding : how communication works at wire-level
  * Contract: what's exposed at service for the client to call into

* Bhevariours: aspects that controls how a Service handles a call once a request comes in
Plumbing details (not business logic)

* Bindings: configuration like:
how big the messages can be
what kind of security are you using
are you allowing distributed transactions to flow
(these configurations can be turned on/off for a given binding)



