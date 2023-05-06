vim.cmd [[packadd packer.nvim]]

require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- LSP
  use {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "neovim/nvim-lspconfig",
      "nvim-lua/lsp-status.nvim"
  }

  -- Completion
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

  -- For vsnip users.
  -- use 'hrsh7th/cmp-vsnip'
  -- use 'hrsh7th/vim-vsnip'

  -- For luasnip users.
  -- use 'L3MON4D3/LuaSnip'
  -- use 'saadparwaiz1/cmp_luasnip'

  -- Debugger
  use 'mfussenegger/nvim-dap'

  -- Beautify
  use "mhartington/formatter.nvim"

  -- Markdown
  use 'ellisonleao/glow.nvim'

  -- Treesitter
  use 'nvim-treesitter/nvim-treesitter'

  -- Terminal
  use {"akinsho/toggleterm.nvim", tag = '*'}

  -- Fuzzy
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Dashboard
  use { 'glepnir/dashboard-nvim' }

  -- Indent
  use "lukas-reineke/indent-blankline.nvim"

  -- File Explorer
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional
    }
  }

  -- Comment
  use {
    'numToStr/Comment.nvim',
  }

  use 'github/copilot.vim'

  -- Themes
  use "EdenEast/nightfox.nvim" -- Packer

  -- Tabs
  use 'nanozuki/tabby.nvim'
  -- Line
  use 'freddiehaddad/feline.nvim'
  use 'nvim-lualine/lualine.nvim'
end)

require('plugins')

return
