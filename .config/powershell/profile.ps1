# Install-Module posh-git -Scope CurrentUser -Force
# Install-Module oh-my-posh -Scope CurrentUser -Force
# Install-Module -Name PSReadline -Scope CurrentUser -Force

Import-Module posh-git
Import-Module oh-my-posh
Import-Module PSReadline

Set-PoshPrompt -Theme spaceship

# Autocomplete, keybinds and command history
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward
Set-PSReadlineOption -HistorySearchCursorMovesToEnd

# Autosuggestions
Set-PSReadlineOption -ShowToolTips
Set-PSReadlineOption -PredictionSource History

# Custom functions
function GitR {
	[string]$remote = git config --get remote.origin.url
	if ($remote) {
		Start-Process $remote
		break
	}
	Write-Output "> No git URL found"
}