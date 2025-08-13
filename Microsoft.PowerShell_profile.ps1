oh-my-posh --init --shell pwsh --config "$env:POSH_THEMES_PATH\gene.omp.json" | Invoke-Expression
$env:VIRTUAL_ENV_DISABLE_PROMPT = 1

Import-Module Terminal-Icons

# Import-Module posh-git
# $GitPromptSettings.WorkingColor.ForegroundColor = 'White'
# $GitPromptSettings.LocalWorkingStatusSymbol.ForegroundColor = 'White'
# $GitPromptSettings.DefaultPromptBeforeSuffix.Text = '`n'

function git-status { git status }
Set-Alias -Name gst -Value git-status

function git-checkout { git checkout $args }
Set-Alias -Name gch -Value git-checkout

function git-branch { git branch -av }
Set-Alias -Name gbr -Value git-branch

function git-log-5 { git log --oneline -5 }
Set-Alias -Name glog -Value git-log-5