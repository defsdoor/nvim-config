-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use( {
	  'nvim-telescope/telescope.nvim',
	    requires = { {'nvim-lua/plenary.nvim'} }
  })

--   use({
-- 	  'rose-pine/neovim',
-- 	  as = 'rose-pine',
-- 	  config = function()
-- 		  vim.cmd('colorscheme rose-pine')
-- 	  end
--   })

  use({'ellisonleao/gruvbox.nvim', priority = 1000, config = true})

  use({
      "folke/trouble.nvim",
      config = function()
          require("trouble").setup {
              icons = false,
              -- your configuration comes here
              -- or leave it empty to use the default settings
              -- refer to the configuration section below
          }
      end
  })

  use({"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"})
  use("nvim-treesitter/playground")
  use("theprimeagen/refactoring.nvim")
  use("mbbill/undotree")
  use("nvim-treesitter/nvim-treesitter-context")
  use("rrethy/nvim-treesitter-endwise")

  use( {
	  'VonHeikemen/lsp-zero.nvim',
      branch = 'v3.x',
      requires = {
        -- LSP Support
        {'neovim/nvim-lspconfig'},
  --		  {'williamboman/mason.nvim'},
  --		  {'williamboman/mason-lspconfig.nvim'},

        -- Autocompletion
        {'hrsh7th/cmp-buffer'},
        {'hrsh7th/cmp-path'},
        {'saadparwaiz1/cmp_luasnip'},
        {'hrsh7th/cmp-nvim-lsp'},
        {'hrsh7th/cmp-nvim-lua'},
        {'onsails/lspkind.nvim'},

        -- Snippets
        {'L3MON4D3/LuaSnip'},
        {'rafamadriz/friendly-snippets'},
      }
  })

  use('hrsh7th/nvim-cmp')
  use("folke/zen-mode.nvim")
--   use("github/copilot.vim")
  use("eandrju/cellular-automaton.nvim")
  use("nvim-tree/nvim-tree.lua")
  use("nvim-tree/nvim-web-devicons")
  use("tpope/vim-fugitive")
  use("tpope/vim-rails")
  use("romainl/vim-cool")
  use("vimwiki/vimwiki")
  use("Exafunction/codeium.vim")

end)

