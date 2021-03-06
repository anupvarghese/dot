
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew upgrade

brew install wifi-password dockutil n docker deno terraform awscli azure-cli yarn git ripgrep fd tmux neovim gawk coreutils

brew cask install --appdir="/Applications" iterm2
# brew cask install --appdir="/Applications" visual-studio-code
brew cask install --appdir="/Applications" slack

brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

