### [< back to functions](index.md)

# Invoke-DBOPackageCI

For a newly defined process, creates a new DBOps package from all the files in the specified folder
For existing process, updates the current version of the package by creating
a new build from the scripts that were recently added/modified in the specified folder.

Compares all the contents of the package with contents of the folder using absolute/relative paths
depending on the ability to build a relative path to the script folder.

Each build will be assigned with a version using [System.Version] object. Each new build will have
an increase in the build number, however, Major/Minor versions will stay the same unless the
function is explicitly called with the new -Version

![InvokeDBOPackageCI](../img/Invoke-DBOPackageCI.gif)

## parameters

### -Path
Path to the existing DBOpsPackage.
Aliases: Name, FileName, Package
### -ScriptPath
A collection of folders to scan. Accepts Get-Item/Get-ChildItem objects and wildcards.
Will recursively add all of the subfolders inside folders. See examples if you want only custom files to be added.
During deployment, scripts will be following this deployment order:
 - Item order provided in the ScriptPath parameter
   - Files inside each child folder (both folders and files in alphabetical order)
     - Files inside the root folder (in alphabetical order)
     
Aliases: SourcePath
### -Version
A string that is indended to represent the Major/Minor versions of the current package.
Optional if the package already exists.

Will be used to construct the new build version: specifying '2.4' will result in build '2.4.1' for new packages

For existing packages will compare the versions and continue to increase the build number by 1, but only if
Major/Minor versions are consistent.
Example:
Current package version = '2.1.3', Version = '2.1', Output => '2.1.4'
Current package version = '2.1.3', Version = '3.0', Output => '3.0.1'
### -Type
Adds only files that were not added to the package yet. The following options are available:
* New: add new files based on their source path (can be relative)
* Modified: adds files only if they have been modified since they had last been added to the package
* Unique: adds unique files to the build based on their hash values. Compares hashes accross the whole package
* All: add all files regardless of their previous involvement

More than one value can be specified at the same time.

Default value: New, and it's strongly recommended to keep it that way!
### -WhatIf
Shows what would happen if the command would execute, but does not actually perform the command
### -Confirm
Prompts to confirm certain actions

## examples

```powershell
# Will invoke CI build for version 1.0.x of the package MyPackage.zip using scripts from the source folder .\Scripts
Invoke-DBOPackageCI -Path MyPackage.zip -ScriptPath .\Scripts -Version 1.0
```
