### Inspired by ThePrimeagen's init.lua

## Setup

Prerequisite: install [ripgrep](https://github.com/BurntSushi/ripgrep).


git clone git@git.foxsoft.co.uk:foxsoft/neovim.git ~/.config/nvim

Open ~/.config/nvim/lua/awp/packer.lua in nvim

do :so

(ignore errors)

do :PackerSync

do :PackerSync

quit nvim

Enjoy

## Features

### Language Servers

When you open a new file type you will be prompted if you want to install a language server.

For rails projects/ruby files choose solargraph.

The solargraph installation is attempted using your system ruby - not the ruby in the
project.  This intentional - just make sure that your system ruby is new enough to run
solargraph.  This means that you do not need to add solargraph to projects.

### Saved undo/redo history with branching history

## Key maps

Most kep mappings are in lua/awp/remap.lua - some are in the the after/plugin file for
specific plugins.

Will Document keymaps here - a full list can be seen by typing :Telescope keymaps

#### Rails

<SPACE>rc - File selector for rails controllers
<SPACE>rv - File selector for rails views
<SPACE>rm - File selector for rails models
<SPACE>rj - File selector for rails javascripts
<SPACE>rs - File selector for rails stylesheets
<SPACE>rh - File selector for rails helpers

### Git
<SPACE>gs - Git Status

### Harpoon
Harpoon lets you "harpoon" files and switch between them quickly

<SPACE>-ha - Add (harppon) a file
<SPACE>-ho - Open harpooned file list
<SPACE>-h1 - Open harpooned file No.1
<SPACE>-h2 - Open harpooned file No.2
<SPACE>-h3 - Open harpooned file No.3
<SPACE>-h4 - Open harpooned file No.4
<SPACE>-h5 - Open harpooned file No.5
<SPACE>-h6 - Open harpooned file No.6
<SPACE>-h7 - Open harpooned file No.7
<SPACE>-h8 - Open harpooned file No.8
<SPACE>-h9 - Open harpooned file No.9
