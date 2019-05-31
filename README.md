![dotfiles](https://raw.githubusercontent.com/ukcrpb6/dotfiles/logo.svg)

# Reference

[Github dotfiles](https://dotfiles.github.io/)
[Xero dotfiles](https://github.com/xero/dotfiles)
[Atomantic dotfiles](https://github.com/atomantic/dotfiles)
[zplug](https://github.com/zplug/zplug)
[stow](https://www.gnu.org/software/stow/)
[VSCode Terminal Themes](https://glitchbone.github.io/vscode-base16-term)

# Header generation

```zsh
# Install custom figlet fonts
mkdir -p ~/src/github.com
cd ~/src/github.com
git clone https://github.com/xero/figlet-fonts
cp ~/src/github.com/figlet-fonts/* /usr/local/share/figlet/

# Generate banner
toilet -t -f 3d <phrase>

# or copy into clipboard
toilet -t -f 3d <phrase> | pbcopy 
```

# Notes

```zsh
# Install zsh and plugin system
brew install zsh 
brew install zplug

# Install stow for link management
brew install stow

# Install more up-to-date ruby
RUBY_CONFIGURE_OPTS="--with-openssl-dir=`brew --prefix openssl` --with-readline-dir=`brew --prefix readline` --with-libyaml-dir=`brew --prefix libyaml`"
brew install ruby

# Change user shell
sudo dscl . -change /Users/$USER UserShell $SHELL /usr/local/bin/zsh

# Install programmer fonts
brew install fontconfig
brew tap homebrew/cask-fonts
brew cask install \
  font-fontawesome \ 
  font-awesome-terminal-fonts \ 
  font-hack \
  font-inconsolata-dz-for-powerline \
  font-inconsolata-g-for-powerline \
  font-inconsolata-for-powerline \
  font-roboto-mono \
  font-roboto-mono-for-powerline \
  font-source-code-pro

# Install OpenJDK
brew tap AdoptOpenJdk

# Install ls replacement
brew install exa

# Install ruby manager
brew install rbenv

# Install node manager
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

# Install terminal screen
brew install tmux

# Stow files - stow defaults to stowing in parent ../ of
# the directory it is invoked from
cd ~/.dotfiles
for dir in aws bash commitizen git hyper ruby ssh zsh; do
  stow $dir
done

# (Optional) stow the vscode configuration (requires removal of existing if present)
stow -t ~/Library/Application\ Support/Code/User vscode

# Install insomnia rest client
brew cask install insomnia
```