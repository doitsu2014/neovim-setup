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
    "lua",
    "hcl"
  },
  sync_install = true,
  highlight = {
    enable = true,
    disable = {
    }
  }
}

local parser_config = require'nvim-treesitter.parsers'.get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
