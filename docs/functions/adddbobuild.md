### [< back to functions](functions.md)

# Add-DBOBuild

Creates a new build in existing DBOps package from specified set of scripts.

![Add-DBOBuild](../img/Add-DBOBuild.gif)

## parameters

### -Path
Path to the existing DBOpsPackage.
Aliases: Name, FileName, Package
### -ScriptPath
A collection of script files to add to the build. Accepts Get-Item/Get-ChildItem objects and wildcards.
Will recursively add all of the subfolders inside folders. See examples if you want only custom files to be added.
During deployment, scripts will be following this deployment order:
 - Item order provided in the ScriptPath parameter
   - Files inside each child folder (both folders and files in alphabetical order)
     - Files inside the root folder (in alphabetical order)
     
Aliases: SourcePath
### -Build
A string that would be representing a build number of this particular build.
Optional - can be genarated automatically.
Can only contain characters that will be valid on the filesystem.
### -Type
Adds only files that were not added to the package yet. The following options are available:
* New: add new files based on their source path (can be relative)
* Modified: adds files only if they have been modified since they had last been added to the package
* Unique: adds unique files to the build based on their hash values. Compares hashes accross the whole package
* All: add all files regardless of their previous involvement

More than one value can be specified at the same time.

Default value: All
### -WhatIf
Shows what would happen if the command would execute, but does not actually perform the command
### -Confirm
Prompts to confirm certain actions

## examples

```powershell
# Add new build 2.0 to the existing package using files from .\Scripts\2.0
Add-DBOBuild -Path MyPackage.zip -ScriptPath .\Scripts\2.0 -Build 2.0
```
```powershell
# Add new build 2.1 to the existing package using modified files from .\Scripts\2.0
Get-ChildItem .\Scripts\2.0 | Add-DBOBuild -Path MyPackage.zip -Build 2.1 -UniqueOnly
```
```powershell
# Add new build 3.0 to the existing package checking if there were any new files in the Scripts folder
Add-DBOBuild -Path MyPackage.zip -ScriptPath .\Scripts\* -Build 3.0 -NewOnly
```
