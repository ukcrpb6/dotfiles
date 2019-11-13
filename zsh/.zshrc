#                 ██
#                ░██
#  ██████  ██████░██      ██████  █████
# ░░░░██  ██░░░░ ░██████ ░░██░░█ ██░░░██
#    ██  ░░█████ ░██░░░██ ░██ ░ ░██  ░░
#   ██    ░░░░░██░██  ░██ ░██   ░██   ██
#  ██████ ██████ ░██  ░██░███   ░░█████
# ░░░░░░ ░░░░░░  ░░   ░░ ░░░     ░░░░░
#
#█▓▒░ source: http://code.xero.nu/dotfiles

#█▓▒░ load configs
for config (~/.zsh/*.zsh) source $config

[ -e ~/.zshrc.local ] && source ~/.zshrc.local

#█▓▒░ hack to fix auto-completion issue
_comp_options=(${_comp_options/(NO_warnnestedvar)})
