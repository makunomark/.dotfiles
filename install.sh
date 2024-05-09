if [ -z "$DOTFILES_PATH" ]; then
  echo "DOTFILES_PATH is not set. Please set this environment variable."
  exit 1
fi

# Vim configuration
rm ~/.vimrc
ln -sv "$DOTFILES_PATH/vim/vimrc" ~/.vimrc

