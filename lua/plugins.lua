-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]
-- Only if your version of Neovim doesn't have https://github.com/neovim/neovim/pull/12632 merged
-- vim._update_package_paths()

-- Replace with https://github.com/neovim/neovim/pull/12378 when it's convenient.
vim.api.nvim_command('autocmd BufWritePost plugins.lua PackerCompile')

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- Additional functionality
  use 'tpope/vim-surround'
  use 'kaarmu/typst.vim'
  use 'tpope/vim-commentary'
  -- Fancy
  use 'gruvbox-community/gruvbox'
  use 'itchyny/lightline.vim'
  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'ms-jpq/coq_nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.3',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  use {
      "folke/zen-mode.nvim",
      opts = { backdrop = 0.95, width = 150, }
  }
end)
