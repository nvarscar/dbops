### [< back to functions](index.md)

# Set-DBODefaultSetting

This function creates or changes configuration values.
These can be used to provide dynamic configuration information outside the PowerShell variable system.

![SetDBODefaultSetting](../img/Set-DBODefaultSetting.gif)

## parameters

### -Name
Name of the configuration entry.
### -Value
The value to assign to the named configuration element.
### -Handler
A scriptblock that is executed when a value is being set.
Is only executed if the validation was successful (assuming there was a validation, of course)
### -Append
Adds the value to the existing configuration instead of overwriting it
Default value: False
### -Temporary
The setting is not persisted outside the current session.
By default, settings will be remembered across all powershell sessions.
Default value: False
### -Scope
Choose if the setting should be stored in current user's registry or will be shared between all users.
Allowed values: CurrentUser, AllUsers.
AllUsers will require administrative access to the computer (elevated session).

Default: CurrentUser.
Default value: CurrentUser
### -WhatIf
Shows what would happen if the command would execute, but does not actually perform the command
### -Confirm
Prompts to confirm certain actions

## examples

```powershell
Set-DBODefaultSetting -Name ConnectionTimeout -Value 5 -Temporary
Change connection timeout setting for the current Powershell session to 5 seconds.
```
```powershell
Set-DBODefaultSetting -Name SchemaVersionTable -Value $null
Change the default SchemaVersionTable setting to null, disabling the deployment logging by default
```
