My Vim configuration is maintained along the lines described by vimcasts.org
http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/

## Installation

```
git clone https://github.com/dhinus/vimfiles.git ~/.vim
```

Create symlinks:

```
cd ~
ln -s .vim/vimrc .vimrc
```

Switch to the ~/.vim directory, and fetch submodules:

```
cd ~/.vim
git submodule update --init --recursive
```

## Updating plugins

To update a single plugin:

```
git submodule update --remote --recursive bundle/$MODULE_NAME
```

To update all plugins:

```
git submodule update --remote --recursive
```
