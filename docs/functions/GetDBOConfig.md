### [< back to functions](index.md)

# Get-DBOConfig

Returns a DBOpsConfig object from an existing json file. If file was not specified, returns a blank DBOpsConfig object.
Values of the config can be overwritten by the hashtable parameter -Configuration.

![GetDBOConfig](../img/Get-DBOConfig.gif)

## parameters

### -Path
Path to the JSON config file.
### -Configuration
Overrides for the configuration values. Will replace existing configuration values.

## examples

```powershell
# Returns empty configuration
Get-DBOConfig
```
```powershell
# Returns configuration from existing file
Get-DBOConfig c:\package\dbops.config.json
```
```powershell
# Saves empty configuration to a file
(Get-DBOConfig).SaveToFile('c:\package\dbops.config.json')
```
