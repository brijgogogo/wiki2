# Programming

## Overview
- [development_methods](development_methods)
- [coding_practices](coding_practices)
- [programming_concepts](programming_concepts)
- [design_patterns](design_patterns/index.md)
- [algorithms](algorithms/index.md)
- [programming_tips](programming_tips)
- [estimating](estimating)
- [programming_jargons](./programming_jargons.md) (terms)
- [REST](REST)
- [tech_stacks](tech_stacks)
- [data_attributes](data_attributes)
- [starter_kits](starter_kits)
- [QA](QA)
- [information_architecture](information_architecture)
- [CORS](CORS)
- [authentication](authentication)
- [CQRS](CQRS/index.md)
- [DDD](DDD/index.md)
- [software_architect](software_architect)



## Languages / Platforms
- dynamically typed languages
  - [dot_net](dot_net/index.md) (C#, F#, asp.net, etc)
  - [golang](./golang/index.md)
  - [java](java/index.md)
  - [c](c/index.md)
- statically typed languages
  - [js](js/index.md)
  - [ruby](ruby/index.md)
  - [python](python/index.md)

- [perl](perl/index.md)
- [Erlang](./erlang/index.md)
- [elm](elm/index.md)
- [php](php/index.md)
- [kotlin](kotlin/index.md)
- [haskell](haskell/index.md)

## Messaging
- [overview](overview)
- [Kafka](Kafka/index.md)
- [RabbitMQ](rabbitmq/index.md)

## [tools](tools)


## Markup Languages
- [markdown](markdown)

# UI Frameworks
- [react.js](./react/index.md)

## NPM Packages
- faker (fake data)

## Databses
- [sqlserver](sqlserver/index.md)
- [mongodb](mongodb/index.md)
- [oracle](oracle/index.md)
- [caches](caches/index.md) (redis, etc)
- [postgresql](postgresql/index.md)
- [neo4j](neo4j/index.md) (graph database)
- [db_terms](db_terms)

## Search
- [lucene](lucene/index.md)
- [solr](solr/index.md)
- [elastic_search](elastic_search/index.md)

## Clouds
- [cloud_computing](cloud_computing/index.md)
- [aws](aws/index.md)
- [azure](azure/index.md)

## Containers
- [Docker](Docker/index.md)

## Content Management
- [jekyll](jekyll/index.md)
- [wordpress](wordpress/index.md)

## APIs
- [graphql](./graphql/index.md)
- WebSockets

## Web Design
* [html](./html/index.md)
* [css](./css/index.md)
* [images](./images/index.md)
* [resources](resources)

## General Concepts
- [mime](./mime.md)
- [http](./http/index.md)
- rss - Rich Site Summary
- [semantic_versioning](semantic_versioning.md)

## Web Servers
* [apache](apache/index.md)
* [iis](iis/index.md)
* [fenix](fenix/index.m)
* python -m http.server
* [nginx](nginx/index.md)
* jekyll
* lighttpd

## CI / CD
- [team_city](team_city/index.md)
- [psake](psake/index.md)


## Security
- [encryption](encryption/index.md)
- [cryptography](cryptograhy/index.md)

## Shell Scipting
- [bash](bash/index.md)
- [powershell](powershell/index.md)
- [batch_scipting](batch_scipting/index.md)


- [elk](elk/index.md)

## [Cloud_Computing](./Cloud_Computing/index.md)

## [Discrete_Mathematics](./Discrete_Mathematics/index.md)

https://24ways.org/


## Throttling & Debouncing
To throttle a function means to ensure that the function is called at most once in a specified time period (for instance, once every 10 seconds).
A debounced function will ignore all calls to it until the calls have stopped for a specified time period. Only then will it call the original function.


## Windowing / virtualization
Windowing (aka virtualizing) is a technique for improving the performance of long lists by only writing the visible portion of your list to the DOM.

## [git](./git/index.md)


## Articles
https://alistair.cockburn.us/hexagonal-architecture/

## Books
Domain-Driven Design (Eric Evans)
REST in Practice (O'Reilly)




## [Microservices](./Microservices/index.md)
## [architect_advices](./architect_advices.md)

## Data Storage
Cassandra


## Monitoring
- Graphite
- ELS-Stack
- Prometheus


## Health Check
- Nagios

## [virtualization](virtualization.md)

## [interview](interview)
## UML
https://plantuml.com/


## Micro Frontends
An architectural style where independently deliverable frontend applications are composed into a greater whole.
https://martinfowler.com/articles/micro-frontends.html
- container application - dynamic integration with other frontends
- cross-app communication: as little as possible
- common styles for consistent UI across apps
- consumer-driven contracts: each micro frontend can specify what it requires of other micro frontends
- Authentication/Authorization: cross-cutting concern, should be owned by container application. Container app can inject the login token into other micro frontends.
- Each micro frontend should have its own automated tests to test business logic and rendering logic.
- Integration testing - function/end-to-end testing tool - Selenium or Cypress. Functional tests just to validate that the page is assembled correctly.

Pit-of-success : make bad decisions hard and good ones easy

## Test Pyramid
Functional tests should only cover aspects that cannot be tested at a lower level of the Test Pyramid.

## Frameworks
- Harvested Framework
https://martinfowler.com/bliki/HarvestedFramework.html
-  Foundation Framework
https://martinfowler.com/bliki/FoundationFramework.html

https://www.martinkysel.com/codility-permmissingelem-solution/

## Code Quality
- Static Analysis
- Linting
- Coding Style
- Code Coverage





## pending
- https://martinfowler.com/articles/consumerDrivenContracts.html
- https://samnewman.io/patterns/architectural/bff/
- https://martinfowler.com/bliki/TestPyramid.html
- https://martinfowler.com/articles/microservices.html
- https://www.thoughtworks.com/radar/techniques
- https://www.joelonsoftware.com/2000/04/06/things-you-should-never-do-part-i/
- https://martinfowler.com/bliki/StranglerFigApplication.html
- https://martinfowler.com/bliki/BoundedContext.html
- https://blog.codinghorror.com/falling-into-the-pit-of-success/
- https://medium.com/@dabit3/the-prosperous-software-consultant-5dc8d705c5dd
http://jr0cket.co.uk/2016/05/ssh-or-https-that-is-the-github-question.html
https://medium.freecodecamp.org/demystifying-containers-101-a-deep-dive-into-container-technology-for-beginners-d7b60d8511c1
https://medium.freecodecamp.org/a-quick-introduction-to-web-security-f90beaf4dd41
https://hackernoon.com/38-actions-and-insights-to-become-a-better-software-architect-f135e2de9a1b


## Base64
- decode
  $ base64 -d file/path
  $ echo <base64_text> | base64 -d
- encode
  $ echo <plain_text> | base64
  $ base64 file/path

## Web
* Web 1.0
  Websites provided information for uers to consume.
* Web 2.0
  Users started to create content themselves. Websites became platform to distribute this new type of content. E.g. social media.
* Web 3.0
  Semantic Web: web would become more autonomous, intelligent, and open.
    - AI, blockchain, IOT, AR/VR
  From simple text processing to intelligent processing.
  Websites will learn to really understand their users[.](..md)
  Voice assistants enable users to consume web (no need of computer/smartphone).


## Complexity
Function that describes how many operations you need to perform to get a result.
Symbolized by O(x), where x is a function of N, where N is the total number of possible operations.

- O(N): linear function: maximum number of operations is N

- O(log2(N)): Dichotomy / binary division / Phone-book principle: sort the items, select a mid item, compare it with item being searched, if it is less than it, pick the first half items and repeat the steps. Similary if it greater, then pick second half items and repeat the steps.

log2 function is the best complexity ever because a significant growth of the number of items yields only a very small growth of the function. e.g. log2(4) = 2, log2(8) = 3, log2(16) = 4, log2(32) = 5, log2(1024) = 10, etc.

## Binary Tree / BTree
In Log2 complexity, each iteration would take mathematics to divide the items. BTree is the data structure that solves this. We start search from root node and move to left/right node based of if it is lesser/bigger that it.




## little-endian, big-endian



