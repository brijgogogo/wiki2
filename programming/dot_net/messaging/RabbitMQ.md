# RabbitMQ
Rabbit MQ : message broker
message broker: request/reply, point to point, pub-sub communication
smart broker / dump consumer model: broker monitors the consumer state
communication can be synchronous or asynchronous
supports distributed deployment
supported protocols: MQTT, AMQP, STOMP
you can set message priorities
push model: distributes messages individually
use cases: high-throughput, background jobs, message broker between microservices
controls its messages almost in-memory (needs more resources)
Publishers send messages to exchanges, and consumers retrieve messages from queues.

## Kafka
Kafka : message bus for high-ingress data replay and streams
durable message broker : Kafka is a log, which means messages are always there (for set time by message retention policy)
messages: value, a key, and a timestamp
provides message ordering (in partition)
Dumb broker / smart consumer model: does not try to track which messages are read by consumers and only keeps unread messages
scalable, fast
pull model: consumers request batches of messages from a specific offset
fast: uses sequential disk I/O to boost performance (demands less hardware)
use cases: stream processing, log aggregation, commit logs, event store/sourcing, activity tracking, metrics

