if [ -z "$DOTFILES_PATH" ]; then
  echo "DOTFILES_PATH is not set. Please set this environment variable."
  exit 1
fi

ln -sv "$DOTFILES_PATH/vim/vimrc" ~/.vimrc

