
ln -sfv "$DOTFILES_DIR/dots/.gitconfig" ~
ln -sfv "$DOTFILES_DIR/dots/.gitignore_global" ~
ln -sfv "$DOTFILES_DIR/dots/.exports" ~
ln -sfv "$DOTFILES_DIR/dots/.aliases" ~
ln -s "$DOTFILES_DIR/dots/.oh-my-zsh" ~
ln -sfv "$DOTFILES_DIR/dots/.zshrc" ~
ln -s "$DOTFILES_DIR/nvim" "${HOME}/.config/nvim"
ln -sfv "$DOTFILES_DIR/dots/.tmux.conf" ~

# ln -s -sfv "$DOTFILES_DIR/vscode/settings.json" ~/Library/Application\ Support/Code/User/settings.json
# ln -s -sfv "$DOTFILES_DIR/vscode/keybindings.json" ~/Library/Application\ Support/Code/User/keybindings.json
# ln -s -sfv "$DOTFILES_DIR/vscode/snippets/" ~/Library/Application\ Support/Code/User
