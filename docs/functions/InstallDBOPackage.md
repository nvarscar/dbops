### [< back to functions](index.md)

# Install-DBOPackage

Deploys an existing DBOps package with optional parameters.
Uses a table specified in SchemaVersionTable parameter to determine scripts to run.
Will deploy all the builds from the package that previously have not been deployed.

![InstallDBOPackage](../img/Install-DBOPackage.gif)

## parameters

### -Path
Path to the existing DBOpsPackage.
Aliases: Name, FileName, Package
### -InputObject
Pipeline implementation of Path. Can also contain a DBOpsPackage object.
### -SqlInstance
Database server to connect to. SQL Server only for now.
Aliases: Server, SQLServer, DBServer, Instance
### -Database
Name of the database to execute the scripts in. Optional - will use default database if not specified.
### -DeploymentMethod
Choose one of the following deployment methods:
- SingleTransaction: wrap all the deployment scripts into a single transaction and rollback whole deployment on error
- TransactionPerScript: wrap each script into a separate transaction; rollback single script deployment in case of error
- NoTransaction: deploy as is

Default: NoTransaction
Default value: NoTransaction
### -ConnectionTimeout
Database server connection timeout in seconds. Only affects connection attempts. Does not affect execution timeout.
If 0, will wait for connection until the end of times.

Default: 30
Default value: 0
### -ExecutionTimeout
Script execution timeout. The script will be aborted if the execution takes more than specified number of seconds.
If 0, the script is allowed to run until the end of times.

Default: 0
Default value: 0
### -Encrypt
Enables connection encryption.
Default value: False
### -Credential
PSCredential object with username and password to login to the database server.
### -UserName
An alternative to -Credential - specify username explicitly
### -Password
An alternative to -Credential - specify password explicitly
### -SchemaVersionTable
A table that will hold the history of script execution. This table is used to choose what scripts are going to be
run during the deployment, preventing the scripts from being execured twice.
If set to $null, the deployment will not be tracked in the database. That will also mean that all the scripts
and all the builds from the package are going to be deployed regardless of any previous deployment history.

Default: SchemaVersions
### -Silent
Will supress all output from the command.
Default value: False
### -Variables
Hashtable with variables that can be used inside the scripts and deployment parameters.
Proper format of the variable tokens is #{MyVariableName}
Can also be provided as a part of Configuration hashtable: -Configuration @{ Variables = @{ Var1 = ...; Var2 = ...}}
Will augment and/or overwrite Variables defined inside the package.
### -SkipValidation
Skip validation of the package that ensures the integrity of all the files and builds.
Default value: False
### -OutputFile
Log output into specified file.
### -Append
Append output to the -OutputFile instead of overwriting it.
Default value: False
### -ConfigurationFile
A path to the custom configuration json file
### -Configuration
Hashtable containing necessary configuration items. Will override parameters in ConfigurationFile
### -Schema
Deploy into a specific schema (if supported by RDBMS)
### -WhatIf
Shows what would happen if the command would execute, but does not actually perform the command
### -Confirm
Prompts to confirm certain actions

## examples

```powershell
# Installs package with predefined configuration inside the package
Install-DBOPackage .\MyPackage.zip
```
```powershell
# Installs package using specific connection parameters
.\MyPackage.zip | Install-DBOPackage -SqlInstance 'myserver\instance1' -Database 'MyDb' -ExecutionTimeout 3600
```
```powershell
# Installs package using custom logging parameters and schema tracking table
.\MyPackage.zip | Install-DBOPackage -SchemaVersionTable dbo.SchemaHistory -OutputFile .\out.log -Append
```
```powershell
# Installs package using custom configuration file
.\MyPackage.zip | Install-DBOPackage -ConfigurationFile .\localconfig.json
```
```powershell
# Installs package using variables instead of specifying values directly
.\MyPackage.zip | Install-DBOPackage -SqlInstance '#{server}' -Database '#{db}' -Variables @{server = 'myserver\instance1'; db = 'MyDb'}
```
