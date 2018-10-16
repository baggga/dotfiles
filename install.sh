#!/bin/sh

if [ -z $(command -v vim) ]; then
    echo "vim is not installed"
else
    echo "configuring vim..."
    cp --backup vim/.vimrc ~/
    if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
        git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    else
        echo "vim Vundle plugin is already installed"
    fi
    pip install jedi
    echo "installing vim plugings"
    vim -c 'PluginInstall' -c 'qa!'
fi

if [ -z $(command -v tmux) ]; then
    echo "tmux is not installed"
else
    echo "configuring tmux..."
    cp --backup tmux/.tmux.conf ~/
    if [ ! -d ~/.tmux/plugins/tpm ]; then
        git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
    else
        echo "tmux plugin manager is already installed"
    fi
    echo "installing tmux plugins"
    ~/.tmux/plugins/tpm/scripts/install_plugins.sh
fi
