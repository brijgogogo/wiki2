# .NET Rremoting
%% A framework for objects living in different AppDomain.

## Remoting Object Types
* Server Activated Objects
%% well-known objects - are first created when a client calls one of their
%% methods, not when a client proxy is created.
%% Must be registered with server and client.
  * Single call objects
  %% handles one and only one incoming request at a time, and doesn't hold any
  %% state information between calls
  %% A single call object is instantiated with every call, and then eventually
  %% destroyed by the garbage collector.
  * Singleton objects
  %% Single instance of object exists. Can be used in session-less and
  %% session-oriented applications
  %% A singleton object is instantiated by the first call, and statys there
  %% until the last client releases it
* Client Activated Objects
%% a separate instance is created for each client, and remains in existence
%% until released by the client. Used in highly session-oriented applications.

## Hosting
* In .NET exe or managed Windows Service
* In IIS (exposed as Web Service)

### Object Lifetime
%% Lifetime fo objects are managed according to a process called leased-based
%% lifetime.
%% A lease is created for every object that also has a reference created outside
%% its host AppDomain.
%% Each AppDomain has a lease manager, which periodically checks the status of
%% all outstanding leases. Each lease has a lease time assiciated with it, and
%% when this time expires, the lease manager releases the object to be destroyed
%% by the garbage collector.



## Channels
%% In .NET remoting, a transport mechanish is referred to as channel.
%% By default, you get two channels:
* TCP/IP (with proprietary binary protocol)
* HTTP

## Formatters and Serialization
%% object to byte stream = serialization
%% byte to object = deserialization
%% Software that carries our serialization and deserialization = Formatter
%% .NET remoting comes with 2 formatters:
* Binary
* SOAP

= Marshaling =
%% To marshal an object means to make it available to be used, either remotely
%% or locally.
* mashal by reference (MBR)
%% remotely, a reference to it. Sitting on the server, awaiting your method call
* marshal by value (MBV)
%% pass an object from server to client or vice-versa. The object is
%% reinstantiated in a different AppDomain from where it started.
%% It must be serializable. [Serializable] attribute.

= Client =
Transparent Proxy -> Real Proxy -> Formatter sink -> Other sinks -> Transport sink
%% whenever a client activates a remote object, two proxy object are created in
%% the client.
* Transparent Proxy
%% It is an exact copy of the remote object. It intercepts all the method calls
%% directed to the remote object, and passes these on to the real proxy.
* Real Proxy
%% The real proxy is never accessed directly, but it handles all outbound
%% communication. It passes the message on to the channel sink chain.

* Sink
%% A sink in an element of software that can receive something.

= Server =
-> Transport Sink -> Other Sinks -> Formatter sink -> Remote Object

%% A proxy object is a substitute for the real, remote object in the local
%% domain. It has the same methods and properties as the remote object. The only
%% difference is that it doesn't do anything. Actual work is done remotely.



= System.MarshalByRefObject =
%% If the object inherits from System.MarshalByRefObject, it is MBR, otherwise,
%% it is implicitly MBV.
* MBR Process
1. A serializable version of the remote object is created on host
2. serializable verion is passed along the remoting channel to client
3. serializable version is deserialized and parsed to create a transparent proxy,
   and housed inside a real proxy
%% The serialized version of object (created in step 1) is represented by
%% System.Runtime.Remoting.ObjRef. It stores all the relevant information to
%% create remote object proxies on the client side (like URL, type information)

= System.Runtime.Remoting.dll =

= System.Runtime.Remoting.RemotingServices =
* Marshal()
* Unmarshal()
* Connect()
* Disconnect()

= System.Runtime.Remoting.Channels.IChannel =
%% All channel objects implement IChannel interface
* IChannelSender
* IChannelReceiver
* System.Runtime.Remoting.Channels.Tcp.TcpChannel =
%% a basic tcp sender-receiver channel
%% It is combined channel of TcpServerChannel (to send messages) and
%% TcpClientChannel (to receive)
%% new TcpChannel() // creates a client channel
%% new TcpChannel(10000) // creates a server channel
%% new TcpChannel(ht, null, null) //ht = new Hashtable() with two keys "name"
%% and "port" // used to create multiple channels in same appdomain

%% Default formatter for TcpChannel is BinaryFormatter
%% Default formatter for HttpChannel is SoapFormatter

* System.Runtime.Remoting.Channels.Http.HttpChannel
* System.Runtime.Remoting.Channel.ChannelServices
%% For channel registeration, resolution and URL discovery.
%% ChannelServices.RegisterChannel(tcpChannel)

= System.Runtime.Remoting.RemotingConfiguration =
%% to modify configuration settings
* Configure()
%% uses xml to configure remoting


= Example =
* Library
public class Exchange : System.MarshalByRefObject {
  private int i;

  public Exchange() {
    i = 100;
  }

  public int NextOrder() {
    i = i + 1;
    return i;
  }
}

* Host
public class Program {
  public static void Main() {
    var c = new TcpChannel(10000);
    ChannelServices.RegisterChannel(c);

    var e = new Exchange();
    RemotingServices.Marshal(e, "Exchange"); //string "Exchange" is URI
    Console.ReadLine();
  }
}

* Client
public class Program {
  public static void Main() {
    var url = "tcp://localhost:10000/Exchange"; // scheme://server:port/uri
    var e = (Exchange)(RemotingServices.Connect(typeof(Exchange), url));
    var i = e.NextOrder();
  }
}

= Server Activated Object =
* Host
public class Program {
  public static void Main() {
    var c = new TcpChannel(10000);
    ChannelServices.RegisterChannel(c);

    RemotingConfiguration.ApplicationName = "ExchangeApplication"; =
    RemotingConfiguration.RegisterWellKnownServiceType(typeof(Exchange), "Exchange", WellKnownObjectMode.Singleton);
    Console.ReadLine();
  }
}


* Client
public class Program {
  public static void Main() {
    var url = "tcp://localhost:10000/ExchangeApplication/Exchange";
    RemotingConfiguration.RegisterWellKnownClientType(typeof(Exchange), url); // or var e = Activator.GetObject(typeof(Exchange), url);

    var e = new Exchange();
    var i = e.NextOrder();
  }
}


= Client Activated Object =
* Host
public class Program {
  public static void Main() {
    var c = new TcpChannel(10000);
    ChannelServices.RegisterChannel(c);

    RemotingConfiguration.RegisterActivatedServiceType(typeof(Exchange));
    Console.ReadLine();
  }
}


* Client
public class Program {
  public static void Main() {
    var url = "tcp://localhost:10000";
    RemotingConfiguration.RegisterActivatedClientType(typeof(Exchange), url); // or var e = Activator.GetObject(typeof(Exchange), url);

    var e = new Exchange();
    var i = e.NextOrder();
  }
}


= Dynamic Publishing of Parameterized Constructor Object =
public class Server {
  public static void main() {
    ChannelServices.RegisterChannel(new TcpChannel(6000));
    var e = new MonitorTimeSpan("Monitor1");
    ObjRef r = RemotingServices.Marshal(e, "MonitorTimeSpan.rem");
    RemotingServices.Disconnect(r);
  }
}

= Lease-based Lifetime =
%% When MBR objects are first marshaled, their lease if activated with an
%% initial lease (default 5 minutes).
* System.Runtime.Remoting.Lifetime.ILease
%% lease object must implement
%% CurrentLeaseTime
%% CurrentState
%% InitialLeaseTime (default 5 minutes)
%% RenewOnCallTime (default 2 minutes)
%% Renew()
  public override InitializeLifetimeService() {
    ILease lease = base.InitializeLifetimeService() as ILease;
    if(lease.CurrentState == LeaseState.Initial) {
      lease.InitialLeaseTime = TimeSpan.FromSeconds(40);
      lease.RenewOnCallTime = TimeSpan.FromSeconds(10);
    }
  }

%% Leases are renews when
%% 1. One of the MBR object's methods is called
%% 2. The lease's Renew() method is called
%% 3. A registered sponsor renews the lease when prompted

public class ExchangeSponsor : MarshalByRefObject, ISponsor {
  public TimeSpan Renewal(ILease lease) {
    return TimeSpan.Seconds(10);
  }
}



* InitializeLifetimeService()
%% An MBR object can be given infinite lifetime by overriding its
%% InitializeLifeTimeServices() method (inherited from MarshalByRefObject) to
%% initialize it without a lease (return null).

= Tracking Handler =
%% Used to see when remoting infrasructure marshals, unmarshals, and disconnects
%% an object.

public class Tracker : System.Remoting.Services.ITrackingHandler {
  public void MarshaledObject(object obj, ObjRef objref) {
    //obj is object
    //objref.URI
  }

  public void UnmarshaledObject(object obj, ObjRef objref) {

  }

  public void DisconnectedObject(object obj) {

  }
}

%% on Host
TrackingServices.RegisterTrackingHandler(new Tracker());


:.net:

