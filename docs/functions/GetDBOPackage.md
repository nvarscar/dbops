### [< back to functions](index.md)

# Get-DBOPackage

Reads DBOps package header and configuration files and returns an object with corresponding properties.

![GetDBOPackage](../img/Get-DBOPackage.gif)

## parameters

### -Path
Path to the DBOps package

Aliases: Name, FileName, Package
### -InputObject
Pipeline implementation of Path. Can also accept a DBOpsPackage object.
### -Unpacked
Mostly intended for internal use. Gets package information from extracted package.
Default value: False

## examples

```powershell
# Returns information about the package myPackage.zip, only including infomartion about builds 1.1 and 1.2
Get-DBOPackage -Path c:\temp\myPackage.zip -Build 1.1, 1.2
```
