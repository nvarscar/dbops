### [< back to functions](index.md)

# Install-DBOSupportLibrary

This command will download nuget packages from NuGet website in order to support deployments for certain RDBMS.

![InstallDBOSupportLibrary](../img/Install-DBOSupportLibrary.gif)

## parameters

### -Type
RDBMS Type: Oracle, SQLServer
### -Scope
Choose whether to install for CurrentUser or for AllUsers
Default value: AllUsers
### -Force
Enforce installation
Default value: False

## examples

```powershell
#Installs all dependencies for Oracle
Install-DBOSupportLibrary Oracle
```
