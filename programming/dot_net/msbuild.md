# msbuild
Microsoft Build Engine

* msbuild file.sln
* msbuild file.sln /t:Clean
* MSBuild.exe MyProj.proj /property:Configuration=Debug

MSBuild uses an XML-based project file format. Elements of the MSBuild project file format:
* Properties
Properties are declared by creating an element that has the name of the property as a child of a PropertyGroup element. For example, the following code creates a property named BuildDir that has a value of Build.

<PropertyGroup>
    <BuildDir>Build</BuildDir>
</PropertyGroup>

You can define a property conditionally by placing a Condition attribute in the element.  In the following example, the Configuration element is defined if it hasn't yet been defined:

<Configuration  Condition=" '$(Configuration)' == '' ">Debug</Configuration>

Properties can be referenced throughout the project file by using the syntax $(PropertyName). For example, you can reference the properties in the previous examples by using $(BuildDir) and $(Configuration).

* Items
Items are inputs into the build system and typically represent files. Items are grouped into item types, based on user-defined item names.

Items are declared in the project file by creating an element that has the name of the item type as a child of an ItemGroup element. For example, the following code creates an item type named Compile, which includes two files.

<ItemGroup>
    <Compile Include = "file1.cs"/>
    <Compile Include = "file2.cs"/>
</ItemGroup>

Item types can be referenced throughout the project file by using the syntax @(ItemType). For example, the item type in the example would be referenced by using @(Compile).

* Taks
Tasks are units of executable code that MSBuild projects use to perform build operations.
A task is executed in an MSBuild project file by creating an element that has the name of the task as a child of a Target element.
<Target Name="MakeBuildDirectory">
    <MakeDir  Directories="$(BuildDir)" />
</Target>


## Sources
https://msdn.microsoft.com/en-us/library/dd393574.aspx

