# dbops functions

## > deployment

[Install-DBOPackage](InstallDBOPackage.md) - initiate the deployment of the SQL code package<br/>
[Invoke-DBODeployment](InvokeDBODeployment.md) - perform ad-hoc deployment of plaintext files or packages

## > package management

### building packages
[Add-DBOBuild](./AddDBOBuild.md) - group SQL code into a build and add it to a new build within an existing package<br/>
[New-DBOPackage](./NewDBOPackage.md) - create a package containing initial SQL code build

### managing packages
[Get-DBOPackage](./GetDBOPackage.md) - retrieve full information about the package<br/>
[Remove-DBOBuild](./RemoveDBOBuild.md) - remove existing build wihtin a package

## > configuration management

### package configuration
[Get-DBOConfig](./GetDBOConfig.md) - retrieve a package configuration<br/>
[Update-DBOConfig](./UpdateDBOConfig.md) - update configuration inside an existing package

### configuring default settings
[Get-DBODefaultSetting](./GetDBODefaultSetting.md) - retrieve information about current default settings<br/>
[Set-DBODefaultSetting](./SetDBODefaultSetting.md) - change default settings

## > CI/CD pipelining

### SQL code integration
[Invoke-DBOPackageCI](./InvokeDBOPackageCI.md) - integrate recent changes in the code into the package using incremental versioning

### artifact management
[Copy-DBOPackageArtifact](./CopyDBOPackageArtifact.md) - copy a specified version of the package from the repository<br/>
[Get-DBOPackageArtifact](./GetDBOPackageArtifact.md) - retrieve a path to the specified version of the package from the repository<br/>
[Publish-DBOPackageArtifact](./PublishDBOPackageArtifact.md) - publish package into the repository

## > utility

[Get-DBOModuleFileList](./GetDBOModuleFileList.md) - return a list of module files<br/>
[Install-DBOSupportLibrary](./InstallDBOSupportLibrary.md) - download 3-rd party libraries required for some RDBMS<br/>
[Test-DBOSupportedSystem](./TestDBOSupportedSystem.md) - test if the connectivity libraries are present on the current machine 