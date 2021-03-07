# NServiceBus

NServiceBus contains an abstraction for underlying queueing technologies

## Settings
settings that determine how our endpoint will operate
endpointName: serves as the logical identity for our endpoint.

  var endpointConfig = new EndpointConfiguration("Client");


## Transport
transport that NServiceBus will use to send and receive messages
transport is the abstraction for a given queueing technology
LearningTransport: for learning purpose
Production transports: RabbitMQ, MSMQ, SqlServer, Amazon SQS, Azure Service Bus, etc.

  var transport = endpointConfig.UseTransport<LearningTransport>();

## Routing
logical routing: mapping of specific message types to logical endpoints

var routing = transport.Routing();
routing.RouteToEndpoint(typeof(PlaceOrder), "Sales");
// routing.RouteToEndpoint(typeof(PlaceOrder).Assembly, "SomeEndpoint");


## Messages
- data (POCOs) sent via one-way communication between two endpoints
- messages are contract between two endpoints
- good practices: keep less properties, do not embed logic, use automatic properties, no computed properties, initialize collection properties to void null exception, put in separate assembly as endpoints
-types of messages: commands and events
- identifying command/event by interfaces: ICommand, IEvent, IMessage (any other type of message, e.g. reply)

## command
- used to make a request to perform an action.
- Sent from one or more senders to one logical owner which cannot un/subscribe
- named in imperative tense like PlaceOrder
- identifying interface: ICommand

## event
- used to communicate that an action has been performed.
- Published by the one logical owner (sender) to one or more recipients who can un/subscribe
- named in past tense (-ed, like OrderPlaced)
- identifying interface: IEvent
- commands are always used within the boundary of a single service


## Unobtrusive Mode Messages
NServiceBus allows defining custom message conventions instead of using the IMessage, ICommand and IEvent interfaces and attributes (so that all apps need not reference same version of NServiceBus or for use in cross-platform environments)
- convention is a way of defining what a certain type is
- e.g. endpointConfig.Conventions().DefiningCommandsAs(t => t.Name.EndsWith("Cmd") || t.Namespace.EndsWith("Commands"));


## message handler
- class that implements IHandleMessages<T>
- IHandleMessages<T>.Handle method is invoked when a message of type T arrives
- single class can implement multiple IHandleMessages<T>
- A new instance is created for every message processed (stateless message handlers)


## NServiceBus startup
scans type types in all available assemblies
finds all message handler classes and wires them up so that they will be invoked when the message arrives.


## Errors
causes of errors in apps:
* transient exception
    if the failing code is immediately retried, it will probably succeed. Example database deadlock
* semi-transient exception
    immediate retry may not succeed, but retrying after a short time might. Example: 1. like when connecting to a web service that goes down intermittently, 2. failover of a database cluster
* systematic exception
    outright flaws in your systems, they will fail every time given same input data. Example NullReferenceException, ArgumentException, DivideByZeroException

Your apps should be able to recover from transient and semi-transient exceptions


## recovery in NServiceBus
* immediate retries
    deal with transient exceptions. Message will be immediately retried up to 5 times (default)
* delayed retries
    deal with semi-transient exceptions. Uses series of successively longer delays between retries. After immediate retries are exhausted, next set of retires are attempted after 10 seconds (default). This happens multiple times before NServiceBus gives up and moves the message to an error queue.

            // var recoverability = endpointConfig.Recoverability();
            // recoverability.Delayed(d => d.NumberOfRetries(0)); // disable delayed retries

error queue: indicates systematic exceptions. The messages in error queue have exception details and stack trace that developer needs to look. Once the underlying issue is fixed, the message can be replayed.

Replaying a message: sends it back to its original queue in order to retry message processing



