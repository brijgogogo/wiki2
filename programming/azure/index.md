# Cloud Computing Services by Microsoft
- IaaS: Azure Compute (Virtual Machines), Azure Storage
- PaaS: Azure Logic Apps, Azure Functions, Azure Web Jobs, Azure Automation
- SaaS: Sharepoint, OneDrive for Business, Microsoft Teams, Power Platform


## Azure
azure.microsoft.com

## Azure - Physical Deployments
For most Azure services you need to specify location of data center where the service will be located.

- Azure Region: represents a specific datacenter where you application runs or where your data is stored.
https://azure.microsoft.com/regions/

Azure Geography: set of regions
Azure Region contains Availability Zone


## Resources in Azure
Virtual Machines, Cloud databases, Cloud Storages, Web Apps, VNETs, etc.
Resource Group: holds related resources that share the same lifecycle (deploy, update, delete together)

## Managing Azure - ARM
Azure is managed using an Azure Resource Management (ARM) API. ARM API manages resources as a group. You can deploy, update, or delete all the resources in a single, coordinated operation.

Azure Resource Management(ARM): Deployment and management service. ARM can be accessed/managed via:
  - Azure Portal
  - Azure Powershell
  - Azure CLI
  - Azure SDKs
  - REST api

ARM Templates
JSON file declares the objects, types, properties you want
Repeatable Deployment: allows you to create and deploy and entire Azure infrastructure declaratively.

## Azure CLI
- az --version
- az login
- az group list
- az resource list --resource-group <groupName>
- az resource list --resource-group <groupName> --out table
- az resource list --resource-group <groupName> --out table --query "[].{name:name, Type:type}
- az appservice plan create --resource-group NewGroup --name TestAppSvcPlan --sku S1
- az webapp create --resource-group NewGroup --plan TestAppSvcPlan --name webappname

## Azure DevOps
- Azure Pipelines (CI/CD)

## Azure App Services (PaaS)
Fully-managed hosting platform for your web apps.

App Services Plan

## Azure Virtual Machines (IaaS)
Windows or Linux VMs
You're responsible for all server software installation, configuration, maintenance, operating system patches.
usage: database servers, Windows Server AD, Microsoft Sharepoint

## Azure Functions (serverless)
Write your code and have it run in response to http requests, webhooks, cloud service events or on a schedule.
Consumption-based billing: pay only for the time your code executes.

## Azure Service Fabric
Distributed systems platform: build, package, deploy, manage scalable and reliable microservices.
Supports WebAPI with OWIN and ASP.NET Core.

## Storage
- Azure storage: for storing non-relational data such as key-value pairs (tables), blobs, messages/queues, files
- Azure Sql Database: for storing relational data (MS SQL Server engine)

## Authentication
- Azure Active Directory
- App Service Authentication: With App Service you get support for Azure AD, social identity providers (Facebook, Google, Microsoft, Twitter)

## Monitoring
- Application Insights: analytics service to monitor your live web app.
- Azure Monitor: monitors metrics/logs generated in your Azure infrastructure and resources.

Azure subscription: azure.com
## Management Portal
https://portal.azure.com
* Create resources: web apps, virtual machines, etc.
* Manage and monitor
* view your bill
* control access

Azure Pricing Calculator
Azure Trust Center

## Sources
https://docs.microsoft.com/en-us/azure/guides/developer/azure-developer-guide
