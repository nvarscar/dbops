### [< back to functions](index.md)

# Copy-DBOPackageArtifact

Copies a DBOps package file from an artifact repository created by Publish-DBOPackageArtifact to the specified location.

![CopyDBOPackageArtifact](../img/Copy-DBOPackageArtifact.gif)

## parameters

### -Repository
Path to the artifact repository - a folder or a network share

Aliases: RepositoryPath
### -Name
Name of the DBOps package

Aliases: FileName, Package
### -Destination
Target path where to copy the package
### -Version
If specified, searches for a specific version of the package inside the repository
### -Passthru
Returns a filesystem object after excecution
Default value: False
### -WhatIf
Shows what would happen if the command would execute, but does not actually perform the command
### -Confirm
Prompts to confirm certain actions

## examples

```powershell
# Copies the latest version of the package myPackage.zip from the repository \\data\repo to the local folder .\
Copy-DBOPackageArtifact -Name myPackage.zip -Repository \\data\repo -Destination .
```
```powershell
# Copies a specific version of the package myPackage.zip from the repository \\data\repo to the folder c:\workspace
Copy-DBOPackageArtifact -Name myPackage -Repository \\data\repo -Version 2.2.1 -Destination c:\workspace
```
