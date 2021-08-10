require('setup/packer')
require('plugins')
require('keymaps')
require('lsp-configuration')

local cmd = vim.cmd  -- to execute Vim commands e.g. cmd('pwd')
local fn = vim.fn    -- to call Vim functions e.g. fn.bufnr()
local g = vim.g      -- a table to access global variables
local opt = vim.opt  -- to set options

-------------------- OPTIONS -------------------------------
---- Choose normal dracula
cmd[[colorscheme dracula]]

-- Choose dracula_pro
-- vim.cmd[[
-- syntax enable
-- let g:dracula_colorterm = 0 
-- colorscheme dracula_pro
-- ]]
--
-- opt.completeopt = {'menuone', 'noinsert', 'noselect'}  -- Completion options (for deoplete)
opt.expandtab = true                -- Use spaces instead of tabs
opt.hidden = true                   -- Enable background buffers
opt.ignorecase = true               -- Ignore case
opt.joinspaces = false              -- No double spaces with join
opt.list = true                     -- Show some invisible characters
opt.number = true                   -- Show line numbers
opt.relativenumber = false          -- Relative line numbers
opt.scrolloff = 4                   -- Lines of context
opt.shiftround = true               -- Round indent
opt.shiftwidth = 2                  -- Size of an indent
opt.sidescrolloff = 8               -- Columns of context
opt.smartcase = true                -- Do not ignore case with capitals
opt.smartindent = true              -- Insert indents automatically
opt.splitbelow = true               -- Put new windows below current
opt.splitright = true               -- Put new windows right of current
opt.tabstop = 2                     -- Number of spaces tabs count for
opt.termguicolors = true            -- True color support
opt.wildmode = {'list', 'longest'}  -- Command-line completion mode
opt.wrap = false                    -- Disable line wrap

-------------------- TREE-SITTER ---------------------------
-- local ts = require'nvim-treesitter.configs'
-- ts.setup {ensure_installed = 'maintained', highlight = {enable = true}}
-------------------- COMMANDS ------------------------------
-- cmd 'au TextYankPost * lua vim.highlight.on_yank {on_visual = false}'
