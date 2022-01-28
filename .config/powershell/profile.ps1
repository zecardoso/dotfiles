# Install-Module posh-git -Scope CurrentUser -Force
# Install-Module oh-my-posh -Scope CurrentUser -Force
# Install-Module -Name PSReadline -Scope CurrentUser -Force

# Import-Module posh-git
# Import-Module oh-my-posh
# Import-Module PSReadline

Set-PoshPrompt -Theme cardoso

# Autocomplete
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
# Set-PSReadlineOption -HistorySearchCursorMovesToEnd

# Command history
Set-PSReadlineOption -PredictionSource History
Set-PSReadlineOption -PredictionViewStyle ListView

# Custom functions
function remote {
	[string]$remote = git config --get remote.origin.url
	if ($remote) {
		Start-Process $remote
		break
	}
	Write-Output "> No git URL found"
}
