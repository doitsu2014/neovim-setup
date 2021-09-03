require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "c_sharp",
    "rust",
    "html",
    "css",
    "scss",
    "javascript",
    "typescript",
    "tsx",
    "toml",
    "yaml",
    "json",
    "swift",
    "vim",
    "lua"
  },
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = false,
    disable = {},
  }
}

local parser_config = require'nvim-treesitter.parsers'.get_parser_configs()
parser_config.tsx.used_by = { "javascript", "typescript.tsx" }
