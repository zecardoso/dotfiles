# Import-Module posh-git -Scope CurrentUser
# Import-Module oh-my-posh -Scope CurrentUser
# Install-Module -Name PSReadline -Scope CurrentUser

Set-PoshPrompt -Theme ys

# Autocomplete, keybinds e histórico de comandos
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward
Set-PSReadlineOption -HistorySearchCursorMovesToEnd

# Autosugestões
Set-PSReadlineOption -ShowToolTips
Set-PSReadlineOption -PredictionSource History