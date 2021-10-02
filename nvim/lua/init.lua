require('plugins')

local ensured_servers = { "rust",
  "lua",
  "yaml",
  "json",
  "html",
  "css",
  "typescript",
  "bash",
  "vim",
  "csharp",
  "dockerfile",
  "diagnosticls"
}

-- require('custom_lspservers/setup')
require('utilities').install_lspservers(ensured_servers)
