
1. Unload project in VS.
2. Open prj file by double clicking in VS ( need Visual Studio Visualization
   and Modeling SDK to open proj files in VS)
3. add below :
<Import Project="$(MSBuildToolPath)\Microsoft.CSharp.targets" />
<Import
Project="$(MSBuildExtensionsPath)\Microsoft\VisualStudio\TextTemplating\v10.0\Microsoft.TextTemplating.targets"
/>
<PropertyGroup>
  <TransformOnBuild>true</TransformOnBuild>
</PropertyGroup>
4. build

