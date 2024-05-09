if [ -z "$DOTFILES_PATH" ]; then
  echo "DOTFILES_PATH is not set. Please set this environment variable."
  exit 1
fi

# SymLink Vim configuration
rm ~/.vimrc
ln -sv "$DOTFILES_PATH/vim/vimrc" ~/.vimrc

# Install omz plugins
echo "Oh-my-zsh Plugins: Installing omz plugins..."
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/marlonrichert/zsh-autocomplete.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autocomplete
echo "Oh-my-zsh Plugins: Install complete"

# Install nvm
echo "Node version manager: Installing..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
echo "Node version manager: Install complete"

