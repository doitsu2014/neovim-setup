require("mason").setup({
  ui = {
      icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
      }
  }
})

require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "rust_analyzer", "terraformls", "tsserver", "vimls", "yamlls" }
})

require("lspconfig").lua_ls.setup {}
require("lspconfig").rust_analyzer.setup {}
require("lspconfig").terraformls.setup {}
require("lspconfig").tsserver.setup {}
require("lspconfig").vimls.setup {}
require("lspconfig").yamlls.setup {}

return
