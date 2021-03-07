# REST
Roy Fielding's Dissertation

# REST: REpresentational State Transfer
ReST is series of rules/contraints:
1. Separation of Client Server: Client sends a request to Server, Server sends response to Client.
2. Stateless Server: As loads increase you can add more servers. If the server is stateful, client sending a request to any server won't work.
3. Cacheable response: Cache data that doesn't change very often. Server should let client know how long the data is good for.
4. Uniform Interface: Server interface should be uniform from one service to another:
  1. Resources (nouns not actions): Uniform Intefaces are built around things, not actions. Actions are verbs like Authorize, login, etc. Nouns are things, like Books, Authors.
  2. Verbs distate type of request: like HTTP Verbs: GET, POST (add an object), DELETE, PUT (replace an object), PATCH (update specific parts of object)
  3. URI



Client -> HTTP Request (verbs, headers, content)
Server -> HTTP Response (status code, headers, content)
HTTP is stateless


# HTTP Verbs:
- GET
retrieves a resource
- POST
adds a new resource
- PUT
updates an existing resource
- PATCH
update an existing resource with set of changes
- DELETE
remove an existing resource


# Headers:
Content Length: <integer>
Content Tyep: text

# Status Codes
- 200 : OK
- 201 : Created
- 202 : Accepted
- 302 : Found
- 304 : Not Modified
- 307 : Temp Redirect
- 308 : Perm Redirect
- 400 : Bad Request
- 401 : Not Authorized
- 403 : Forbidden
- 404 : Not Found
- 405 : Method Not Allowed
- 409 : Conflict
- 500 : Server error


Resource: things that represent objects in your system
(domain model / entities)

# api design
http://.../api/entity
http://.../api/entity/key
http://.../api/entity/key/entity-child
http://.../api/entity/key/entity-child?childProperty=value
http://.../api/entity/key/entity-child/childKey






