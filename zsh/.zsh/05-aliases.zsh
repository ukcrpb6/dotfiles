#                 ██      
#                ░██      
#  ██████  ██████░██      
# ░░░░██  ██░░░░ ░██████  
#    ██  ░░█████ ░██░░░██ 
#   ██    ░░░░░██░██  ░██ 
#  ██████ ██████ ░██  ░██ 
# ░░░░░░ ░░░░░░  ░░   ░░  
#
#█▓▒░ source: http://code.xero.nu/dotfiles

#█▓▒░ aliases
alias gpu='git push --set-upstream origin $(git rev-parse --abbrev-ref HEAD)'
alias l="exa --group-directories-first"
alias ll="exa -l --git --time-style=long-iso --group-directories-first"
alias npi="npm install"
alias npis="npm install --save"
alias npisd="npm install --save-dev"


#█▓▒░ git ignore
gi() {
  curl -s "https://www.gitignore.io/api/$*";
}

#█▓▒░ tmux
function t() {
  X=$#
  [[ $X -eq 0 ]] || X=X
  tmux new-session -A -s $X
}

#█▓▒░ read stuff like manpages
function md() {
    pandoc -s -f markdown -t man "$*" | man -l -
}

function manwww() {
	curl -skL "$*" | pandoc -s -f html -t man | man -l -
}

# i hate this
alias x="startx"