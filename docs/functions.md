---
layout: post
title: dbops - functions
# dbops functions

## > deployment

[Install-DBOPackage](./Install-DBOPackage.md) - initiate the deployment of the SQL code package<br/>
[Invoke-DBODeployment](./Invoke-DBODeployment.md) - perform ad-hoc deployment of plaintext files or packages

## > package management

### building packages
[Add-DBOBuild](./Add-DBOBuild.md) - group SQL code into a build and add it to a new build within an existing package<br/>
[New-DBOPackage](./New-DBOPackage.md) - create a package containing initial SQL code build

### managing packages
[Get-DBOPackage](./Get-DBOPackage.md) - retrieve full information about the package<br/>
[Remove-DBOBuild](./Remove-DBOBuild.md) - remove existing build wihtin a package

## > configuration management

### package configuration
[Get-DBOConfig](./Get-DBOConfig.md) - retrieve a package configuration<br/>
[Update-DBOConfig](./Update-DBOConfig.md) - update configuration inside an existing package

### configuring default settings
[Get-DBODefaultSetting](./Get-DBODefaultSetting.md) - retrieve information about current default settings<br/>
[Set-DBODefaultSetting](./Set-DBODefaultSetting.md) - change default settings

## > CI/CD pipelining

### SQL code integration
[Invoke-DBOPackageCI](./Invoke-DBOPackageCI.md) - integrate recent changes in the code into the package using incremental versioning

### artifact management
[Copy-DBOPackageArtifact](./Copy-DBOPackageArtifact.md) - copy a specified version of the package from the repository<br/>
[Get-DBOPackageArtifact](./Get-DBOPackageArtifact.md) - retrieve a path to the specified version of the package from the repository<br/>
[Publish-DBOPackageArtifact](./Publish-DBOPackageArtifact.md) - publish package into the repository

## > utility

[Get-DBOModuleFileList](./Get-DBOModuleFileList.md) - return a list of module files<br/>
[Install-DBOSupportLibrary](./Install-DBOSupportLibrary.md) - download 3-rd party libraries required for some RDBMS<br/>
[Test-DBOSupportedSystem](./Test-DBOSupportedSystem.md) - test if the connectivity libraries are present on the current machine 