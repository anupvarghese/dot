export DOTFILES_DIR
DOTFILES_DIR="$(cd "$(dirname "../../")"; pwd)"


echo "🍻 Homebrew setup"
# . "$DOTFILES_DIR/install/brew.sh"


echo "🕹️ Console configuration"
# sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


echo "🔗 Symlinks"
. "$DOTFILES_DIR/install/symlinks.sh"

echo "💻 Mac specific configs"
. "$DOTFILES_DIR/mac/defaults.sh"

echo "VSCode settings"
. "$DOTFILES_DIR/vscode/extensions.sh"
