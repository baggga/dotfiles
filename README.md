# Development configs
Tmux and vim configuration files.

## Prerequisites
Tmux and vim need to be installed.

## Installing

1. Clone configs:
```
git clone https://github.com/art-vasilyev/dev-configs.git /tmp/dev-configs/
```
2. Copy configs to home directory:
```
cp -r /tmp/{.vim,.vimrc,.tmux.conf} ~/
```
3. Install vim plugin manager (Vundle):
```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
4. Run vim and install plugins by the command `:PluginInstall`

5. Install tmux plugin manager:
```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
6. Run tmux and install plugins by pressing `<prefix> - I`

