call plug#begin(stdpath('data') .. '/plugged')

Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'

call plug#end()

lua require('init')
set number
