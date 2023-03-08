# Node Red

## Node
Basic building block of a flow. Nodes have input & output ports.

### Core Nodes
  - Inject node: allows you to inject messages into a flow on button click or after an interval
  - Debug node: shows the messages in Debug sidebar
  - Function node: passes messages through javascript function
  - Switch node: allows messages to be routed to different branches of a flow based on a condition
  - Change node: allows modifying message's properties and set context properties
  - Template node: generates text using a message's properties

### Other useful nodes
- Http Request node: used to retrieve a web page
- Csv node: parses csv
- Json node: parses json
- Split node: turns a message into a sequence of messages
- Join node: turns a sequence of messages into a single message
- Sort node: sorts the sequence of messages based on a property value or JSONata expression result
- Batch node: creates new sequence of messages from those received.


## Context
A way to store information that can be shared between nodes.
- Node context: context.get("key"), context.set("key", {prop: "value"})
- Flow context: flow.get("key"), flow.set("key", 123)
- Global context: global.get("key"), global.set("key", false)
By default in-memory context store is used. You can configure it to use file-system based store.

Context objects are references, you can clone them:
var x = RED.util.cloneMessage(msg).



## Functions
https://nodered.org/docs/user-guide/writing-functions
- Runs Javascript code to run against the message.
- Message is passed as an object in "msg".
- You must return a msg object. Returning null ends the flow.

// multiple outputs (configure nubmer of outputs in node)
return [msg, newMsg]
// node.outputCount: gets count of configured outputs
// logging
node.log('info')
node.warn('warn')
node.error('error')

## Subflows
Collection of nodes that are collapsed into a single node.

