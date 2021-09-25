export DOTFILES_DIR EXTRA_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd .. && pwd )"

ln -sfv "$DOTFILES_DIR/dots/.gitconfig" ~
ln -sfv "$DOTFILES_DIR/dots/.gitignore_global" ~
ln -sfv "$DOTFILES_DIR/dots/.exports" ~
ln -sfv "$DOTFILES_DIR/dots/.aliases" ~
ln -sfv "$DOTFILES_DIR/dots/.secrets" ~
ln -sfv "$DOTFILES_DIR/dots/.oh-my-zsh" ~
ln -sfv "$DOTFILES_DIR/dots/.zshrc" ~
ln -sfv "$DOTFILES_DIR/nvim" "${HOME}/.config/nvim"
ln -sfv "$DOTFILES_DIR/dots/.tmux.conf" ~
