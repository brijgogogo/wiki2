# WCF Building Blocks
* Service Contracts : what functionality is exposed
Defined in terms of interface in .net code level
Collections of methods in .net terms

* Data Contract
Part of Service Contracts
Service Conctract methods can take input parameters and return values, these can be complex type, these are called Data Contracts.

* Service
Class that implements Service Contracts

* Service Host
Where Service runs
Hosting options: Console Apps, Windows Service/Forms/WPF, IIS

* Client App
Contains Consumer
Contains Proxy (exposes same interface same as Service)

* Configuration
Exists at Host and Client


