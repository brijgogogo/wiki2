# Open Data Protocol (OData)
- defines best practices for building and consuming RESTful APIs.
- Build REST Api
- Consume REST Api
  - OData metadata: machine readable description of the data model of the APIs.
  - OData metadata enables creation of generic client proxies and tools.
- OASIS approved industry standard since v4

## .NET Support
OData .NET libraries provide:
  - URI parsing
  - request, response reading and writing
  - Entity Data Model (EDM) building
  - .NET OData client to consume OData service

OData stack:
- Microsoft.OData.Core
- Microsoft.OData.Edm
- Microsoft.OData.Client

Microsoft.AspNetCore.OData



## Entity Data Model (EDM)
A set of concepts that describes the structure of data, regardless of its stored form.

Entity: an instance of an entity type that has a unique identity and an independent existence
