#     ██          ██                
#    ░░  ██████  ░██          █████ 
#     ██░██░░░██ ░██ ██   ██ ██░░░██
#    ░██░██  ░██ ░██░██  ░██░██  ░██
#    ░██░██████  ░██░██  ░██░░██████
#  ██░██░██░░░   ░██░██  ░██ ░░░░░██
# ░░███ ░██      ███░░██████  █████ 
#  ░░░  ░░      ░░░  ░░░░░░  ░░░░░  
#

export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug "bhilburn/powerlevel9k", use:powerlevel9k.zsh-theme

# zplug check returns true if all packages are installed
# Therefore, when it returns false, run zplug install
if ! zplug check; then
  zplug install
fi

for config (~/.zsh/zplug.d/*.zsh) source $config

zplug load