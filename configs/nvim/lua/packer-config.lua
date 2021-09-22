-- Automatically setup packer

local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

-- Packages

require('packer').startup(function()
  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-compe'
  use 'glepnir/lspsaga.nvim'
  
  -- Telescope 
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  -- nvim-tree
  use {
    'kyazdani42/nvim-tree.lua',
     requires = 'kyazdani42/nvim-web-devicons'
  }
  
  -- Status line
  use {
    'hoob3rt/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }

  use {
    'romgrk/barbar.nvim',
    requires = {'kyazdani42/nvim-web-devicons'}
  }

  -- Rainbow
  use 'frazrepo/vim-rainbow'
  
  -- Themes
  use 'joshdick/onedark.vim'

  -- Icons
  use 'ryanoasis/vim-devicons'

  use {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }

  -- JS
  use 'yuezk/vim-js'
  use 'leafgarland/typescript-vim'
  use 'peitalin/vim-jsx-typescript'

  -- GraphQL
  use 'jparise/vim-graphql'
end)
