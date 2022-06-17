local DEFAULT_SETTINGS = {
  -- A list of servers to automatically install if they're not already installed. Example: { "rust_analyzer", "sumneko_lua" }
  -- This setting has no relation with the `automatic_installation` setting.
  ensure_installed = {
    "bashls",
    "jsonls",
    "dockerls",
    "sqlls",
    "yamls",
    "sumneko_lua",
    "html",
    "tsserver",
    "eslint",
    "cssls",
    "terraformls",
    "rust_analyzer",
    "vimls",
    "marksman",
    "solang",
    "tailwindcss"
  },
  automatic_installation = true,
  ui = {
    check_outdated_servers_on_open = true,
    border = "none",
    icons = {
      server_installed = "✓",
      server_pending = "➜",
      server_uninstalled = "✗"
    },
    keymaps = {
      -- Keymap to expand a server in the UI
      toggle_server_expand = "<CR>",
      -- Keymap to install the server under the current cursor position
      install_server = "i",
      -- Keymap to reinstall/update the server under the current cursor position
      update_server = "u",
      -- Keymap to check for new version for the server under the current cursor position
      check_server_version = "c",
      -- Keymap to update all installed servers
      update_all_servers = "U",
      -- Keymap to check which installed servers are outdated
      check_outdated_servers = "C",
      -- Keymap to uninstall a server
      uninstall_server = "X",
    },
  },
}

require("nvim-lsp-installer").setup(DEFAULT_SETTINGS)

-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

local on_attach = function(client, bufnr)
  -- require "lsp-format".on_attach(client)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap = true, silent = true, buffer = bufnr }
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
  vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, bufopts)
  vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  vim.keymap.set('n', '<space>f', vim.lsp.buf.formatting, bufopts)
end

local lsp_flags = {
  -- This is the default in Nvim 0.7+
  debounce_text_changes = 150,
}

-- Setup nvim-cmp.
local cmp = require 'cmp'

cmp.setup({
  snippet = {
    -- REQUIRED - you must specify a snippet engine
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
      -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
      -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
      -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
    end,
  },
  window = {
    -- completion = cmp.config.window.bordered(),
    -- documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'vsnip' }, -- For vsnip users.
    -- { name = 'luasnip' }, -- For luasnip users.
    -- { name = 'ultisnips' }, -- For ultisnips users.
    -- { name = 'snippy' }, -- For snippy users.
  }, {
    { name = 'buffer' },
  })
})

-- Set configuration for specific filetype.
cmp.setup.filetype('gitcommit', {
  sources = cmp.config.sources({
    { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
  }, {
    { name = 'buffer' },
  })
})

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline('/', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' }
  }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  })
})

-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

require('lspconfig')["bashls"].setup { capabilities = capabilities, on_attach = on_attach }
require('lspconfig')["jsonls"].setup { capabilities = capabilities, on_attach = on_attach }
require('lspconfig')["dockerls"].setup { capabilities = capabilities, on_attach = on_attach }
require('lspconfig')["sqlls"].setup { capabilities = capabilities, on_attach = on_attach }
require('lspconfig')["yamlls"].setup { capabilities = capabilities, on_attach = on_attach }
require('lspconfig')["sumneko_lua"].setup { capabilities = capabilities, on_attach = on_attach }
require('lspconfig')["html"].setup { capabilities = capabilities, on_attach = on_attach }
require('lspconfig')["tsserver"].setup { capabilities = capabilities, on_attach = on_attach }
require('lspconfig')["eslint"].setup { capabilities = capabilities, on_attach = on_attach }
require('lspconfig')["cssls"].setup { capabilities = capabilities, on_attach = on_attach }
require('lspconfig')["terraformls"].setup { capabilities = capabilities, on_attach = on_attach }
require('lspconfig')["vimls"].setup { capabilities = capabilities, on_attach = on_attach }
require('lspconfig')["marksman"].setup { capabilities = capabilities, on_attach = on_attach }
require('lspconfig')["solang"].setup { capabilities = capabilities, on_attach = on_attach }
require('lspconfig')["tailwindcss"].setup { capabilities = capabilities, on_attach = on_attach }
require('lspconfig')['rust_analyzer'].setup {
  capabilities = capabilities,
  on_attach = on_attach,
  -- flags = lsp_flags,
  -- Server-specific settings...
  settings = {
    ["rust-analyzer"] = {}
  }
}
