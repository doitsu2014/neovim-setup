require'lspconfig'.rust_analyzer.setup{on_attach=require'completion'.on_attach}
require'lspconfig'.denols.setup{on_attach=require'completion'.on_attach}
require'lspconfig'.cssls.setup{on_attach=require'completion'.on_attach}
require'lspconfig'.html.setup{on_attach=require'completion'.on_attach}
require'lspconfig'.jsonls.setup{on_attach=require'completion'.on_attach}
require'lspconfig'.yamlls.setup{on_attach=require'completion'.on_attach}
require'lspconfig'.pyright.setup{on_attach=require'completion'.on_attach}
require'lspconfig'.vimls.setup{on_attach=require'completion'.on_attach}
