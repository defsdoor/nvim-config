### Inspired by ThePrimeagen's init.lua

## Setup

Prerequisite: install [ripgrep](https://github.com/BurntSushi/ripgrep).


``` git clone git@git.foxsoft.co.uk:foxsoft/neovim.git ~/.config/nvim```

Install packer (package management for nvim)

``` git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim ```

Open ~/.config/nvim/lua/awp/packer.lua in nvim

do

```:so```

(ignore errors)

do

```:PackerSync```

do

```:PackerSync```

quit nvim

Enjoy

## Features

### LSP
Install ruby_lsp, ruby-lsp-rails gems

## Key maps

Most kep mappings are in lua/awp/remap.lua - some are in the the after/plugin file for
specific plugins.


### Keymaps
Will (try to) document keymaps here - a full list can be seen by typing :Telescope keymaps

#### Rails

Includes rails-vim - so Rcont, Rview etc.. all work

- \<SPACE>-rc - File selector for rails controllers
- \<SPACE>-rv - File selector for rails views
- \<SPACE>-rm - File selector for rails models
- \<SPACE>-rj - File selector for rails javascripts
- \<SPACE>-rs - File selector for rails stylesheets
- \<SPACE>-rh - File selector for rails helpers

- \<SPACE>-oo - Open file history selector
- \<SPACE>-pf - find files
- \<SPACE>-ps - grep files
- \<SPACE>-rs - browse current open file parent directory

- \<SPACE>-f - rubocop autofix

#### LSP
[d - current line diagnostic - shows lint in popup
]d - next diagnostic

#### Git
- \<SPACE>-gs - Git Status

