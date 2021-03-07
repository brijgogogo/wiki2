# kafka

== Data Transforming Techniques ==
ETL vs Streams

ETL: Extract => Transform > Load

Data Providers => Data Warehouses => Use cases

* Data Providers
internal apps
Business systems
External events

* Data warehouses
HDFS
Database
Hive DW

* Use Cases
Strategic decisions
Business monitoring
Targeting customers



In Kafka world, we use streaming instead of ETL.

Data Providers => Streaming Platform => Use Cases

Producers => Streaming Platform => Consumers   (kafka terms)

Insider the 'streaming platform' as the data is being written, operations are being performed on it (real time/low latency). Then data is sent to consumers. Consumers are listening on events that have occurred.

Producers
Consumers
Stream Processors
Connectors (Kafka listens on events on these systems (like relationsal database) and on occurrence of any, processes the data)


== Uses of Kafka ==
Messaging : send message from one app to another. Makes applications loosely coupled.
Operational Monitoring : to monitor machines
Web Analytics: record user actions, clicked links, last watched video, etc.
Log collection
Stream Processing: instead of processing data in batch or overnight or hourly, process them as they occur.

