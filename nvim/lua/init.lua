vim.cmd [[packadd packer.nvim]]

require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  
  -- COMPLETION
  use 'ms-jpq/coq_nvim'

  -- LSP
  use 'williamboman/nvim-lsp-installer'
  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
  use 'nvim-lua/lsp-status.nvim'




  -- You can alias plugin names
  use { 'dracula/vim', as = 'dracula' }
end)

require('plugins')

return