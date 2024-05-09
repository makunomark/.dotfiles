Setup steps
1. `chmod +x install.sh`
1. `export DOTFILES_PATH=<Path you cloned this repo>`
1. `./install.sh`

Configures the following applications
1. Vim

# Managing environment variables (env vars)
1. Copy `zsh/example_local_env.zsh` to `zsh/local_env.zsh`
1. Edit `zsh/local_env.zsh` (remove examples and add your env vars)
NB: Be sure to edit `zsh/local_env.zsh` instead of `~/.zshrc` directly. This is because `~/.zshrc` is a symbolic link to `zsh/zshrc`
1. Update `DOTFILES_PATH` in `zsh/zshrc`
1. Run `./install.sh`
NB: You have to run install script everytime a change is made to `local_env.zsh`

