# windows services

Service classes inherits from System.ServiceProcess.ServiceBase


= Service Management =
sc create <ServiceName> binPath="C:\path\to\main.exe"
sc start <ServiceName>
sc query <ServiceName>
sc stop <ServiceName>
sc delete <ServiceName>


