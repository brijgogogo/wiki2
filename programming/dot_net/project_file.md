# project file
<Project Sdk="Microsoft.NET.Sdk.Web">
  <PropertyGroup>
    <TargetFramework>netcoreapp2.0</TargetFramework>
  </PropertyGroup>
  <ItemGroup>
    <Folder Include="wwwroot\" />
  </ItemGroup>
  <ItemGroup>
    <PackageReference Include="Microsoft.AspNetCore.All" Version="2.0.0" />
  </ItemGroup>
</Project>

- Project element, Sdk attribute: specifies what SDK to use
- TargetFramework(s): specify target framework(s)

- Folder: All files located in the same directory as the project file are included in the project by default. This behavior can be altered by specifying the patterns to include or exclude using the Folder element.

- ItemGroup: External dependencies (project references, external tools, or NuGet packages)



