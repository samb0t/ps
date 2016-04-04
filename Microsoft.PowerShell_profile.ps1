
# Load posh-git example profile
. '~\Documents\WindowsPowerShell\Modules\posh-git\profile.example.ps1'

$ProfileRoot = (Split-Path -Parent $MyInvocation.MyCommand.Path)
$env:path += ";$ProfileRoot"

# turn powershell into visual studio developer console
Invoke-Environment '"%vs140comntools%\vsvars32.bat"'

# to call something in the msbuild directory '&$msb\csi.exe' for example
	# no need to cd into msb for csi since we're already a dev console
$msb = "${env:ProgramFiles(x86)}" + "\MSBuild\14.0\Bin\"

