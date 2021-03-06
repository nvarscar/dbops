### [< back to functions](index.md)

# New-DBOPackage

Creates a new zip package which would contain a set of deployment scripts.
Deploy.ps1 inside the package will initiate the deployment of the extracted package.
Can be created with predefined parameters, which would allow for deployments without specifying additional info.

![NewDBOPackage](../img/New-DBOPackage.gif)

## parameters

### -Path
Package file name. Will add '.zip' extention, if no extension is specified

Aliases: Name, FileName, Package
Default value: (Split-Path (Get-Location) -Leaf)
### -ScriptPath
A collection of script files to add to the build. Accepts Get-Item/Get-ChildItem objects and wildcards.
Will recursively add all of the subfolders inside folders. See examples if you want only custom files to be added.
During deployment, scripts will be following this deployment order:
 - Item order provided in the ScriptPath parameter
   - Files inside each child folder (both folders and files in alphabetical order)
     - Files inside the root folder (in alphabetical order)
     
Aliases: SourcePath
### -Build
A string that would be representing a build number of the first build in this package.
A single package can span multiple builds - see Add-DBOBuild.
Optional - can be genarated automatically.
Can only contain characters that will be valid on the filesystem.
### -Force
Replaces the target file specified in -Path if it already exists.
Default value: False
### -Configuration
Hashtable containing necessary configuration items. Will override parameters in ConfigurationFile
### -ConfigurationFile
A path to the custom configuration json file
### -Variables
Hashtable with variables that can be used inside the scripts and deployment parameters.
Proper format of the variable tokens is #{MyVariableName}
Can also be provided as a part of Configuration hashtable: -Configuration @{ Variables = @{ Var1 = ...; Var2 = ...}}
### -WhatIf
Shows what would happen if the command would execute, but does not actually perform the command
### -Confirm
Prompts to confirm certain actions

## examples

```powershell
# Creates new package using files from .\Scripts\2.0. Initial build version will be 2.0
New-DBOPackage -Path MyPackage.zip -ScriptPath .\Scripts\2.0 -Build 2.0
```
```powershell
# Creates new package using files from .\Scripts\2.0. Destination file will be overwritten.
Get-ChildItem .\Scripts\2.0 | New-DBOPackage -Path MyPackage.zip -Build 1.0 -Force
```
```powershell
# Creates new package and applies custom configuration template to it
New-DBOPackage -Path MyPackage.zip -ScriptPath .\Scripts -ConfigurationFile .\config.json
```
```powershell
# Creates new package and uses predefined configuration parameters
New-DBOPackage -Path MyPackage.zip -ScriptPath .\Scripts -Configuration @{ Database = 'myDB'; ConnectionTimeout = 5 }
```
