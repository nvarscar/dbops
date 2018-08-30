# Generates md files for each command based on help
Param (
	$Command = '*'
)
$commands = Get-Command -Module dbops -Name $Command
$template = Get-Content $PSScriptRoot\..\..\docs\functions\template.md -Raw

foreach ($command in $commands) {
	$help = Get-Help $command
	$parameters = @()
	foreach ($p in $help.parameters.parameter) {
		$outParam = @()
		$outParam += '### -' + $p.Name.Trim()
		$outparam += $p.Description.Text
		if ($p.defaultValue -and $p.Description.Text -notlike '*Default value*') {
			$outparam += 'Default value: ' + $p.defaultValue.ToString()
		}
		$parameters += $outParam -join "`r`n"
	}
	$examples = @()
	foreach ($e in $help.examples.example) {
		$outExample = @()
		$outExample += '```powershell'
		$outExample += $e.Code
		$outExample += $e.Remarks.Text.Trim() | Where-Object { $_ }
		$outExample += '```'
		$examples += $outExample -join "`r`n"
	}
	$output = $template
	$output = $output -replace '\@description', $help.description.Text
	$output = $output -replace '\@functionName', $help.name
	$output = $output -replace '\@parameters', ($parameters -join "`r`n")
	$output = $output -replace '\@examples', ($examples -join "`r`n")
	$output | Out-File -FilePath "$PSScriptRoot\$($help.name).md" -Encoding unicode
}