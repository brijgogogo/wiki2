# Caches

## Aerospike
Written in C
Flash-optimized in-memory open soruce NoSQL database
3 Layers -
	1) Flash optimized data layer : store data in state drives, RAM, traditional rotational media
	2) self-managed distributed layer: replicated across data centers
	3) cluster-aware client layer : track cluster configuration and manages communication

http://www.aerospike.com/docs/
https://en.wikipedia.org/wiki/Aerospike_database


## Redis (REmote Dictionary Server)
Written in C
In-memory database, open-source
networked, key-value store with optional durability
Supports strings, lists, maps, sets, sorted sets, hyperloglogs, bitmaps, spatial indexes
Propertery protocol for access with support for C, C++, C#, Java, JavaScript (Node.js), Python, R, Ruby
Publish/Subscribe
A Redis cluster is able to scale up to 1000 nodes
Supports Server side scripts via Lua
Master-slave replication

https://en.wikipedia.org/wiki/Redis
https://redis.io/
https://redis.io/documentation
https://github.com/antirez/redis
https://aws.amazon.com/elasticache/what-is-redis/
https://github.com/uglide/RedisDesktopManager
https://db-engines.com/en/system/Geode%3BRedis

https://collaborate.citi.net/docs/DOC-285714

https://github.com/ServiceStack/redis-windows
https://github.com/ServiceStack/redis-windows/raw/master/downloads/redis-latest.zip

https://github.com/StackExchange/StackExchange.Redis
https://stackexchange.github.io/StackExchange.Redis/Basics


https://stackoverflow.com/questions/25536312/how-to-store-user-defined-objects-using-stackexchange-redis
http://tylerstroud.com/2014/11/18/storing-and-querying-objects-in-redis/
https://kkovacs.eu/cassandra-vs-mongodb-vs-couchdb-vs-redis

https://redis.io/commands/keys

http://patshaughnessy.net/2011/11/29/two-ways-of-using-redis-to-build-a-nosql-autocomplete-search-index
http://oldblog.antirez.com/post/autocomplete-with-redis.html

http://redis.io/topics/security
https://www.digitalocean.com/community/tutorials/how-to-secure-your-redis-installation-on-ubuntu-14-04
http://antirez.com/news/96




## Elastic Search or SOLR


## VoltDB
In-Memory database
ACID-compliant RDBMS, shared-nothing architecture
Enterprise, community edition

https://en.wikipedia.org/wiki/VoltDB
https://www.voltdb.com/
https://www.openhub.net/p/voltdb/


## Geode
Implemented in Java
Supported on all OS with JAVA VM
Provides Java Client API, Memcached protocol, RESTful HTTP API, native clients for Java, C++, C#
Supports Server side scripts via uder defined functions (Java)
Supports Triggers
Master-master replication
Event framework provides Publish-subscribe
Self-healing

http://geode.apache.org/
http://geode.apache.org/docs/


## Hazlecast
Open source in-memory data grid
Based on Java
Cloud-supported
Provides support for Java, .NET, Python, Node.js


https://en.wikipedia.org/wiki/Hazelcast
https://github.com/hazelcast/hazelcast
http://hazelcast.com/










* Gemfire
* redis
https://en.wikipedia.org/wiki/NewSQL

InnoDB

http://www.butleranalytics.com/5-free-and-open-source-in-memory-databases/

http://highscalability.com/blog/2011/12/21/in-memory-data-grid-technologies.html


    VMware Gemfire                                                 (Java)
    Oracle Coherence                                             (Java)
    Alachisoft NCache                                              (.Net)
    Gigaspaces XAP Elastic Caching Edition            (Java)
    Hazelcast                                                           (Java)
    Scaleout StateServer                                          (.Net)

Geode/GemFire
--------------
write-intensive
Flexible data models
Scales out better than Redis in a more automated fashion.
Geode also understands Redis protocol, so you can point your Redis clients to Geode. This is interesting because the problem with Redis data structures is that they cannot scale beyond the memory available to the Redis server. The further limitation that Redis server is single threaded and cannot really be scaled up, only makes the problem worse. With Geode your Redis data structures can scale horizontally.

Here's an old post showing how to create a custom indexing schemes in Geode (QuadTreeIndex for spatial data): http://blogs.vmware.com/vfabric/2012/12/gemfire-patternspart...
https://news.ycombinator.com/item?id=10596859
https://www.youtube.com/playlist?list=PL62pIycqXx-TTMXsq09BEGfacLjeHZM28
https://www.youtube.com/playlist?list=PL62pIycqXx-Rzd_HcjU7YXq1kIOa28M8X
https://ignite.apache.org/use-cases/compare/gemfire.html
https://en.wikipedia.org/wiki/Gemstone_%28database%29
https://blogs.vmware.com/vfabric/2012/12/gemfire-patternspart-1-the-value-architecture-code-for-building-geography-based-apps.html

Apache Ignite, based off the commercial distribution Grid Gain is newer to market.

Apache Geode, based off the commercial distribution GemFire, has a long history in the market.

Redis
------------------------
Read-intensive
It also has a powerful data model, but you have to use their data models.

Redis is single-threaded, so everything it does on a per-node basis is implicitly atomic. You can also force the single thread to handle a block of commands from a single socket at once by using MULTI (otherwise commands can be interleaved with other commands from other sockets).

It's not guaranteed to be atomic in failure conditions. Also, the biggest difference between Redis and Geode would be the "distributed" part, which involves maintaining these guarantees across a cluster of machines (which Redis demonstratingly doesn't do).



Redis was created by Salvatore Sanfilippo in 2009, and Sanfilippo remains the lead developer of the project today. Redis is sometimes described as "Memcached on steroids," which is hardly surprising considering that parts of Redis were built in response to lessons learned from using Memcached. Redis has more features than Memcached and is, thus, more powerful and flexible.
Redis allows key names and values to be as large as 512MB each, and they are binary safe.

memcached
-------------------
Memcached was originally developed by Brad Fitzpatrick in 2003 for the LiveJournal website. Since then, Memcached has been rewritten in C (the original implementation was in Perl) and put in the public domain, where it has become a cornerstone of modern Web applications. Current development of Memcached is focused on stability and optimizations rather than adding new features.
Memcached could be preferable when caching relatively small and static data, such as HTML code fragments. Memcached's internal memory management, while not as sophisticated as that of Redis, is more efficient in the simplest use cases because it consumes comparatively less memory resources for metadata. Strings (the only data type supported by Memcached) are ideal for storing data that's only read, because strings require no further processing. That said, Memcached's memory management efficiency diminishes quickly when data size is dynamic, at which point Memcached's memory can become fragmented. Also, large data sets often involve serialized data, which always requires more space to store. While Memcached is effectively limited to storing data in its serialized form, the data structures in Redis can store any aspect of the data natively, thus reducing serialization overhead.



http://www.infoworld.com/article/3063161/application-development/why-redis-beats-memcached-for-caching.html

http://www.gridgain.com/


https://ignite.incubator.apache.org/


TIBCO's ActiveSpaces


http://www.alachisoft.com/jvcache/

http://geode.apache.org/

http://voltdb.com/

http://www.nuodb.com/

http://redis.io/

http://gigaom.com/2013/09/18/memsql-adds-nosql-support-to-its-in-memory-database/


https://en.wikipedia.org/wiki/In-memory_database

http://www.aerospike.com/




Oracle Database 12c includes new memory-optimized database technology capable of delivering high-speed performance for analytical processing. Oracle Database In-Memory is an in-memory columnar data format designed to process SQL rapidly without limiting functionality.

Microsoft SQL Server 2016 delivers in-memory capabilities, too, with a memory-optimized database engine integrated into the core SQL Server engine. To use In-Memory OLTP, tables must be defined as memory-optimized. Memory-optimized tables are fully ACID-compliant and are accessed using Transact-SQL in the same way as disk-based tables. Queries and transactions can reference and update data in both memory-optimized tables and disk-based tables. The SQL Server In-Memory OLTP engine is designed for extremely high-session concurrency.




TransLattice Elastic Database (TED)

NuoDB

Oracle TimesTen In-Memory Database primer f

SAP HANA






