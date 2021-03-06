### [< back to functions](index.md)

# Publish-DBOPackageArtifact

Publishes a DBOps package file to an artifact repository located in a specific folder

Repository is structured as a top-level repository folder with subfolders inside:

RepositoryFolder
- PackageName
  - Current
    - PackageName.zip
  - Versions
    - 1.0
      - PackageName.zip
    - 2.0
      - PackageName.zip
    ...

Newly submitted package will replace the package in the Current folder, as well as will
create a proper subfolder in the Versions folder and copy the file there as well.

![PublishDBOPackageArtifact](../img/Publish-DBOPackageArtifact.gif)

## parameters

### -Repository
Path to the artifact repository - a folder or a network share

Aliases: RepositoryPath
### -Path
Name of the DBOps package

Aliases: Name, FileName, Package
### -InputObject
Pipeline implementation of Path. Can also contain a DBOpsPackage object.
### -VersionOnly
Will copy the file only to the proper Versions subfolder, skipping replacing the file in the Current folder
Default value: False
### -Force
Will replace existing version in the repository
Default value: False
### -WhatIf
Shows what would happen if the command would execute, but does not actually perform the command
### -Confirm
Prompts to confirm certain actions

## examples

```powershell
# Saves the package myPackage.zip in the repository \\data\repo
Publish-DBOPackageArtifact -Name myPackage.zip -Repository \\data\repo
```
```powershell
# Saves the package myPackage.zip in the repository \\data\repo without updating the most current
# version in the repository. Will overwrite the existing version when exists
Get-DBOPackage myPackage.zip | Publish-DBOPackageArtifact -Repository \\data\repo -VersionOnly -Force
```
