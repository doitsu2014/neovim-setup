vim.cmd [[packadd packer.nvim]]

require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- LSP
  use 'williamboman/nvim-lsp-installer'
  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
  use 'nvim-lua/lsp-status.nvim'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp' --completion
 	use {'tzachar/cmp-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-cmp'}
  use "mhartington/formatter.nvim"

  -- Markdown
  use 'ellisonleao/glow.nvim'

  -- Treesitter
  use 'nvim-treesitter/nvim-treesitter'

  -- Terminal
  use { "akinsho/toggleterm.nvim", tag = 'v1.*', config = function()
    require("toggleterm").setup()
  end }

  -- Fuzzy
  use {
    'nvim-telescope/telescope.nvim',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  -- Bar
  use {
    'romgrk/barbar.nvim',
    requires = { 'kyazdani42/nvim-web-devicons' }
  }

  -- Line
  use({
    "NTBBloodbath/galaxyline.nvim",
    -- your statusline
    config = function()
      require("galaxyline.themes.eviline")
    end,
    -- some optional icons
    requires = { "kyazdani42/nvim-web-devicons", opt = true }
  })

  -- Cursor Line
  use('yamatsum/nvim-cursorline')


  -- Dashboard
  use { 'glepnir/dashboard-nvim' }

  -- Indent
  use "lukas-reineke/indent-blankline.nvim"

  -- File Explorer
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }


  -- Debugger
  use 'mfussenegger/nvim-dap'


  -- Comment
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }


  use 'github/copilot.vim'

  -- Themes
  use "EdenEast/nightfox.nvim" -- Packer
end)

require'cmp'.setup {
 sources = {
 	{ name = 'cmp_tabnine' },
 },
}

require('nvim-cursorline').setup {
  cursorline = {
    enable = true,
    timeout = 1000,
    number = false,
  },
  cursorword = {
    enable = true,
    min_length = 3,
    hl = { underline = true },
  }
}
require('Comment').setup()
require('plugins')

return
