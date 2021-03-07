# RabbitMQ
- Released in 2007, open source message broker written in Erlang by Pivotal Software
- Lightweight: requires less than 40 MB of RAM to run the core RabbitMQ applicaiton along with plugins, such as Management UI.
- plugin system allowing third party plugins like plugin to store messages directly into databases.
- RabbitMQ clusters use the native Erlang inter-process communication mechanism in the VM for cross-node communication, sharing state information and allowing for messages to be published and consumed across the entire cluster.
- Protocol neutral, implemented specifications: AMQP, MQTT, Stomp, XMPP
- Supports cross-data center distribution of data (from one RabbitMQ to remote RabbitMQ) (RabbitMQ federation plugin)

## AMQP (Advanced Message Queuing Protocol) Specifictaion (www.amqp.org)
- Binary protocol

AMQP specification defines network protocol and server-side services and behaviors.
It defines following components in broker software that define the routing behavior of messages:
- Exchange: receives messages sent to RabbitMQ, routes them to queues by examining data attributes passed along with the message or that are contained within the message's properties.
- Queue: stores received messages on disk or in memory prior to delivering them in FIRO order
- Binding (or binding key): a rule that tells the exchange which queue the messages should be stored in

## routing-key, binding-key
routing-key attribute in message may be a queue name or string that sematically describes the message.
message's routing-key is evaluated against the binding key to determine appropriate queues it should be routed to.

RabbitMQ extends AMQP specification by allowing exchanges to bind to other exchanges.

AMQP splits communication between the client and broker into chunks of data called frames.

As an AMQP broker, RabbitMQ uses RPC as dialect for communication.

Client-Server negotiation process:
- Client sends a protocol header to server (greeting/first-time communication)
- RabbitMQ starts the command/response sequence by replying to greeting with "Connection.Start" command, and the clinet responds with "Connection.StartOk" response frame.
After the negotiation is complete, other commands can be sent from client to RabbitMQ and vice-versa once a channel has been opened.
Channels use the negotiated AMQP connection as the conduit for transmitting information to each other. They isolate their transmissions from other conversations that are happening.
A single AMQP connection can have multiple channels allowing multiple conversations.

## AMQP frame
It is composed of:
1. Frame type
2. Channel number
3. Frame size in bytes
4. Frame payload
5. End-byte marker (ASCII value 206)

First 3 are frame header.

## Frame types
1. protocol header: used only once, when connecting to RabbitMQ
2. method: carries with it RPC request or response that's being sent or received from RabbitMQ. Additionally carries parameters required to execute it like routing key.
3. content header: contains size and properties of a message (like time when message was sent)
4. content body: contains the content of the message
5. heartbeat: sent to and from RabbitMQ as a check

AMQP has a maximum frame size, and if the body of your message exceeds that size, the content will be split into multiple body frames.

If RabbitMQ sends a heartbeat to client and it doesn't respond, RabbitMQ will disconnect it. You might want to disable or increate the value when dealing with single-threaded or asynchronous apps.




