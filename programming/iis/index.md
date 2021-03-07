# iis
Internet Information Services

IIS Components
- Protocol Listeners
- Services

## Protocol Listeners
Client <--> Protocol Listeners <--> IIS

e.g.
- HTTP.sys (HTTP listener)
- WCF listener adapter

## Services
- WWW Service
  * configures HTTP listener by reading config
- Windows Process Activation Service (WAS)
  * manages application pools and worker processes (starts, stops, monitors, recycles)
  * on startup, WAS reads ApplicationHost.config and passes it to listener adapters, which configures the protocol listeners

client request <--->  protocol listener <---> WAS/listener adapter <---> worker process

%windir%\system32\inetsrv\config\applicationhost.config

Worker Process: processes that process HTTP requests


## IIS Modules
components which can be added/removed in IIS
native modules (Win32 DLL) (IIS C++ APIs)
managed modules (.NET type contained within an assembly) (ASP.NET APIs)

native modules e.g: authentication modules, cache modules, compression modules, content modules (defaultDocumentModule, staticFileModule, etc), logging modules, diagnostics modules

managed modules e.g: Profile, Session, FormsAuthentication, RoleManager, OutputCache

## request processing
* Integrated Request Processing
- IIS + ASP.NET request pipeline
- contains ordered list of native and manged modules
- all file types can use features
- eliminates duplication of features in IIS and ASP.NET
- manage all modules in one location

When a worker process in an application pool receives a request, the request passes through an ordered list of events. Each event calls the necessary native and managed modules to process portions of the request and to generate the response.


* Classic Request Processing
ASP.NET requests first go through native processing steps in IIS and are then routed to Aspnet_isapi.dll for processing of managed code in the managed runtime. Finally, the request is routed back through IIS to send the response.


## Application Pools
- prevents one application from affecting another
- worker process isolation
- can be set to Integrated or Classic mode for request processing



## sources
https://docs.microsoft.com/en-us/iis/get-started/introduction-to-iis/introduction-to-iis-architecture

