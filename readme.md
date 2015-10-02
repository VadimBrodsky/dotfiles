# Vadim's Dotfiles

## Vim

Symlink vimrc file from the vim directory

```bash
ln -nfs ~/git/dotfiles_vb/vim ~/.vim
ln -nfs ~/git/dotfiles_vb/vimrc ~/.vimrc
ln -nfs ~/git/dotfiles_vb/gvimrc ~/.gvimrc
```

Installing a plugin as git submodule

```bash
git submodule add http://github.com/tpope/vim-fugitive.git vim/bundle/fugitive
```

Installing submodules on a different machine

```bash
git submodule update --init
```

Updating linked git submodules

```git
git submodule foreach git pull origin master
```

Generate Pathogen docs

```vim
:call pathogen#helptags()
```
