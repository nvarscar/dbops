### [< back to functions](index.md)

# Remove-DBOBuild

Remove specific list of builds from the existing DBOps package keeping all other parts of the package intact

![RemoveDBOBuild](../img/Remove-DBOBuild.gif)

## parameters

### -Path
Path to the existing DBOpsPackage.
Aliases: Name, FileName, Package
### -Build
One or more builds to remove from the package.
### -WhatIf
Shows what would happen if the command would execute, but does not actually perform the command
### -Confirm
Prompts to confirm certain actions

## examples

```powershell
# Removes builds 1.1 and 1.2 from the package
Remove-DBOBuild -Path c:\temp\myPackage.zip -Build 1.1, 1.2
```
```powershell
# Removes all 1.* builds from the package
$builds = (Get-DBOPackage c:\temp\myPackage.zip).Builds
$builds.Build | Where { ### [< back to functions](index.md)

# Remove-DBOBuild

Remove specific list of builds from the existing DBOps package keeping all other parts of the package intact

![RemoveDBOBuild](../img/Remove-DBOBuild.gif)

## parameters

### -Path
Path to the existing DBOpsPackage.
Aliases: Name, FileName, Package
### -Build
One or more builds to remove from the package.
### -WhatIf
Shows what would happen if the command would execute, but does not actually perform the command
### -Confirm
Prompts to confirm certain actions

## examples

@examples -like '1.*' } | Remove-DBOBuild -Path c:\temp\myPackage.zip
```
