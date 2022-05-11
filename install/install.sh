# run zsh.sh to install oh-my-zsh
sh zsh.sh

# create symlinks
ln -sfv "${HOME}/.dotfiles/dots/.gitconfig" ${HOME}
ln -sfv "${HOME}/.dotfiles/dots/.gitignore_global" ${HOME}
ln -sfv "${HOME}/.dotfiles/dots/.aliases" ${HOME}
ln -sfv "${HOME}/.dotfiles/dots/.zshrc" ${HOME}
ln -sfv "${HOME}/.dotfiles/nvim" "${HOME}/.config/nvim"
ln -sfv "${HOME}/.dotfiles/dots/.tmux.conf" ${HOME}
