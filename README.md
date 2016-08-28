Dotfiles
========

Collection of dotfiles and configuration stuff for Bash, Vim, Git, Tmux, Nethack, and IEx, plus some utility scripts.

Vim setup uses [Vundle](https://github.com/VundleVim/Vundle.vim). To install Vundle and packages:

```sh
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
git config --global core.editor $(which vim)
```
