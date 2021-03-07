# Proxy

Supports objects that control the creation of and access to other objects. The
proxy is often a small (public) object that stands in for a more complex
(private) object that is activated once certain circumstances are clear.

---------------------------------------
<<interface>>
ISubject
  +Request()

class Proxy : ISubject
  +Request()
  -subject : Subject

class Subject
  +Request()

Client <>- ISubject
Proxy <>- Subject
---------------------------------------

Eash Proxy object maintains a reference to a Subject.

Kinds of proxies
* virtual proxies: hands the creation of an object over to another object.
* authentication proxies: checks that the access permissions for a request are
  correct.
* remote proxies: encodes requests and send them across a network.
* smart proxies: adds or change requests before sending them.

Proxies are frontends to classes that have sensitive data or slow operations,
or need access control or expensive to create or access remote sites or need
to perform some action whenever they are accessed.

Proxies, like decorators, forward requests on to another object. The
difference is tht the proxy relationship is set up at design time. Decorators,
on the other hand, can be added dynamically.


== Sources ==
Book: C# 3.0 Design Patterns

