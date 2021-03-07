# dotnet cli

With .NET Core SDK, a CLI tool named dotnet is installed.

## help
- dotnet --help
- dotnet new help
- dotnet new --help

## solution
- dotnet new sln -n demoSolution
- dotnet sln list : list projects in solution
- dotnet sln add/list/remove : add/list/remove projects from a solution
- dotnet sln add path/to/dir/with/project/file

## project
- dotnet new [-l|--list] : get list of templates
- dotnet new <template short name> [-n|--name]
- dotnet new console: creates a new console application project
- dotnet new classlib: creates a new assembly library project
- dotnet new web: creates a new empty ASP.NET Core project
- dotnet new mvc: creates a new ASP.NET Core MVC project
- dotnet new webapi: creates a new ASP.NET Core Web API project
- dotnet new xunit
- dotnet new mstest
- dotnet new react
- dotnet new angular

## build, run , publish
- dotnet build: compiles the project
- dotnet test: runs unit tests on the project
- dotnet run: runs the project
- dotnet publish: publishes a project for deployment, including the runtime
- dotnet clean: cleans build outputs
- dotnet migrate: migrates a .NET Core project created with the preview CLI
  tools to the current CLI tool MS Build format
- dotnet pack: creates a NuGet package for the project or as a self-contained application


## package/reference
* dotnet add package <packageName>: add a package reference
* dotnet add reference : add a project reference
* dotnet remove package/reference
* dotnet list: list references
* dotnet list reference
list project references in current directory
- dotnet restore: downloads dependencies for the project
* dotnet list ./project.csproj reference
listing project references

*

$ TERM=xterm dotnet build
%% fix to invalid terminfo error

The C# compiler (named Roslyn) used by the dotnet CLI tool converts your C#
source code into intermediate language (IL) code and stores the IL in an
assembly (a DLL or EXE file).

IL code statements are like assembly language instructions, but they are
executed by .NET Core's virtual machine, known as the CoreCLR.

At runtime, the CoreCLR loads the IL code from the assembly, JIT
(just-in-time) compiles it into native CPU instructions, and then it is
executed by the CPU on your machine.

## examples
* dotnet new mvc -lang C# -n MyMvcApp
* dotnet build
* dotnet run (builds and runs)


