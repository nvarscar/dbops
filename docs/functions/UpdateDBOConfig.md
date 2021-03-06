### [< back to functions](index.md)

# Update-DBOConfig

Overwrites configuration file inside the existing DBOps package with the new values provided by user

![UpdateDBOConfig](../img/Update-DBOConfig.gif)

## parameters

### -Path
Path to the existing DBOpsPackage.
Aliases: Name, FileName, Package
### -ConfigName
Name of the configuration item to update
### -Value
Value of the parameter specified in -ConfigName
### -Configuration
Hashtable containing several configuration items at once
Alias: Config
### -ConfigurationFile
A path to the custom configuration json file
Alias: ConfigFile
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
# Update a single parameter in the configuration file of the Package.zip package
Update-DBOConfig Package.zip -ConfigName ApplicationName -Value 'MyApp'
```
```powershell
# Update several configuration parameters at once using a hashtable
Update-DBOConfig Package.zip -Configuration @{'ApplicationName' = 'MyApp'; 'Database' = 'MyDB'}
```
```powershell
# Update parameters based on the contents of the json file myconfig.json
Update-DBOConfig Package.zip -ConfigurationFile 'myconfig.json'
```
```powershell
# Specifically update values of the Variables parameter
Update-DBOConfig Package.zip -Variables @{ foo = 'bar' }
```
