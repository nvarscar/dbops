### [< back to functions](index.md)

# Get-DBOPackageArtifact

Returns a path from an artifact repository created by Publish-DBOPackageArtifact.

Repository is structured as a simple folder with subfolders inside:

(Optional)RootFolder
- PackageName
  - Current
    - PackageName.zip
  - Versions
    - 1.0
      - PackageName.zip
    - 2.0
      - PackageName.zip
    ...

![GetDBOPackageArtifact](../img/Get-DBOPackageArtifact.gif)

## parameters

### -Repository
Path to the artifact repository - a folder or a network share

Aliases: RepositoryPath
### -Name
Name of the DBOps package

Aliases: FileName, Package
### -Version
If specified, searches for a specific version of the package inside the repository

## examples

```powershell
# Returns path to the latest version of the package myPackage.zip from the repository \\data\repo
Get-DBOPackageArtifact -Name myPackage.zip -Repository \\data\repo
```
```powershell
# Returns path to the specific version of the package myPackage.zip from the repository \\data\repo
Get-DBOPackageArtifact -Name myPackage -Repository \\data\repo -Version 2.2.1
```
