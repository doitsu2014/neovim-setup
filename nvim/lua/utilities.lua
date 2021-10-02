local M = {}

local config = require"lspinstall/util".extract_config("diagnosticls")
config.default_config.cmd[1] = "./node_modules/.bin/diagnostic-languageserver"
config.default_config.filetypes = { "markdown" }
config.default_config.init_options = {
	formatters = {
		prettier = {
			command = 'prettier',
			args = { '--stdin-filepath', '%filename' }
		}
	},
	formatFiletypes = {
		markdown = 'prettier'
	}
}

require'lspinstall/servers'.custom_diagnosticls = vim.tbl_extend('error', config, {
  install_script = [[
  ! test -f package.json && npm init -y --scope=lspinstall || true
  sudo npm install diagnostic-languageserver@latest
  ]],
})

function M.install_lspservers(table)
  local lspinstall = require'lspinstall'
  for _, v in pairs(table) do
    if not lspinstall.is_server_installed(v) then
      print("Installing lsp server: "..v)
      lspinstall.install_server(v)
    end
  end
end

return M
