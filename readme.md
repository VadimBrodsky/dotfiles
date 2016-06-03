# Vadim's Dotfiles

Symlink the dotfiles to the correct location.

```bash
echo ">>> Setting symlinks"
ln -s ~/code/dotfiles/git/gitconfig ~/.gitconfig
ln -s ~/code/dotfiles/git/gitignore ~/.gitignore
ln -s ~/code/dotfiles/vimrc ~/.vimrc
ln -s ~/code/dotfiles/gvimrc ~/.gvimrc
ln -s ~/code/dotfiles/vim ~/.vim
ln -s ~/code/dotfiles/tmux/tmux.conf ~/.tmux.conf
ln -s ~/code/dotfiles/agignore ~/.agignore
```

## Vim

Install Vim plugins using Vim-Plug:

```
:PlugInstall
```

