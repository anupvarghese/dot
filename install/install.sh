export DOTFILES_DIR EXTRA_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd .. && pwd )"

echo "🍻 Homebrew setup"
# . "$DOTFILES_DIR/install/brew.sh"

echo "🕹️ Console configuration"
. "$DOTFILES_DIR/install/zsh.sh"

echo "🔗 Symlinks"
. "$DOTFILES_DIR/install/symlinks.sh"

echo "💻 Mac specific configs"
. "$DOTFILES_DIR/mac/defaults.sh"

echo "⚓ Configure dock" 
. "$DOTFILES_DIR/mac/dock.sh"

echo "VSCode settings"
. "$DOTFILES_DIR/vscode/extensions.sh"

echo "Clear all"
. "$DOTFILES_DIR/bin/dotfiles" clean

zsh