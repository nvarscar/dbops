### [< back to functions](index.md)

# Get-DBODefaultSetting

Retrieves default configuration elements by name.
Can be used to search the existing defaults list.

![GetDBODefaultSetting](../img/Get-DBODefaultSetting.gif)

## parameters

### -Name
Default: "*"
The name of the configuration element(s) to retrieve.
May be any string, supports wildcards.
Default value: *
### -Force
Overrides the default behavior and also displays hidden configuration values.
Default value: False
### -Value
Extracts the value instead of returning the configuration object.
Default value: False

## examples

```powershell
Get-DBODefaultSetting 'ExecutionTimeout'
Retrieves the configuration element for the key "ExecutionTimeout"
```
```powershell
Get-DBODefaultSetting -Force
Retrieve all configuration elements from the module, even hidden ones.
```
