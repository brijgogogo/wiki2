# Nuget Package
Standard way for libary authors to create packages.
Provides repositories for sharing packages.
Public repository: nuget.org.
One can host their own NuGet repositories (private).
Other repositories: MyGet, Artifactory, TeamCity

In .NET Core entire BCL is distributed as a set of packages.

NuGet Tools: Visual Studio Code, Package Manager Console in VS, dotnet cli, NuGet CLI (nuget.exe)



> Install-Package NHibernate -Project Eg.Core
> Install-Package NHibernate -Version 4.1.1.4000

> dotnet add package <package-name>

## nuget cli
* nuget help
* nuget source list
list nuget sources
* nuget source add -Name <sourceName> -Source <url>
adds a source
* nuget source remove -Name <sourceName>
removes a source

* nuget locals all -list
list the local caches

* nuget locals all -clear
dotnet nuget locals all --clear
clear all caches

* packaging
> dotnet pack
> nuget add StringLibrary.1.0.1.nupkg -Source D:\PrivateNugetPackages
>


https://www.devtrends.co.uk/blog/creating-your-first-shared-library-in-.net-core
https://www.devtrends.co.uk/blog/create-a-free-private-nuget-server-with-continuous-deployment-using-vsts
VS -> Project Properties -> Package
*.csproj: <GeneratePackageOnBuild>True</GeneratePackageOnBuild>


NuGet manages a package cache and a global packages folder to shortcut installation and reinstallation. The cache avoids downloading a package that's already been installed on the machine. The global packages folder allows multiple projects to share the same installed package, thereby reducing NuGet's overall footprint on the computer.

Dependency resolution:
https://docs.microsoft.com/en-us/nuget/consume-packages/dependency-resolution

* dotnet add package <packageName>
see .csproj file for <PackageReference>

## Package Manifest (.nuspec)
Every NuGet package needs a manifest that describes the package's contents and dependencies. In a final package, the manifest is a .nuspec file that is generated from the NuGet metadata properties that you include in the project file.
https://docs.microsoft.com/en-us/nuget/quickstart/create-and-publish-a-package-using-the-dotnet-cli

in csproj file:
<PropertyGroup>
	<PackageId>AppLogger</PackageId>
	<Version>1.0.0</Version>
	<Authors>your_name</Authors>
	<Company>your_company</Company>
</PropertyGroup>
https://docs.microsoft.com/en-us/dotnet/core/tools/csproj#nuget-metadata-properties
* dotnet pack /path/to/csproj
To build a NuGet package (a .nupkg file) from the project, run the dotnet pack command, which also builds the project automatically
* to automatically  run "dotnet pack" when you run "dotnet build"
<PropertyGroup>
	<GeneratePackageOnBuild>true</GeneratePackageOnBuild>
</PropertyGroup>

* dotnet nuget push <packagedFile.nupkg> -k <api_key> -s https://api.nuget.org/v3/index.json
nuget push <packagedFile.nupkg> <api_key> -Source https://api.nuget.org/v3/index.json
pushes package to nuget


* nuget spec <file.csproj>
generates initial .nuspec
https://docs.microsoft.com/en-us/nuget/reference/nuspec#optional-metadata-elements
* dotnet pack  ~/projects/app1/project.csproj /p:NuspecFile=~/projects/app1/project.nuspec /p:NuspecBasePath=~/projects/app1/nuget
Pack the project using a .nuspec file:

https://docs.microsoft.com/en-us/nuget/create-packages/creating-a-package
https://docs.microsoft.com/en-us/dotnet/core/tools/csproj#nuget-metadata-properties






:.net:

