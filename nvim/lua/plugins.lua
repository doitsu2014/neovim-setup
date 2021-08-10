-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
-- Only if your version of Neovim doesn't have https://github.com/neovim/neovim/pull/12632 merged
-- vim._update_package_paths()

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Gits
  use 'tpope/vim-fugitive'
  use 'tpope/vim-rhubarb'

  -- nvim-lspconfig
  use 'neovim/nvim-lspconfig'

  -- nvim-treesitter
  -- use 'nvim-treesitter/nvim-treesitter'

  -- telescope
  -- use {
  --   'nvim-telescope/telescope.nvim',
  --   requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  -- }

  -- Lualine
  -- use {
  --  'hoob3rt/lualine.nvim',
  --  requires = {'kyazdani42/nvim-web-devicons', opt = true}
  -- }

  -- You can alias plugin names
  use {'dracula/vim', as = 'dracula'}

  -- Add local dracula_pro theme
  use '~/themes/dracula_pro'

end)
