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
  use 'tpope/vim-commentary'
  -- Fancy
  use 'gruvbox-community/gruvbox'
  use 'itchyny/lightline.vim'
  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'kabouzeid/nvim-lspinstall'
  -- Autocompletion
  use 'hrsh7th/nvim-compe'
end)
