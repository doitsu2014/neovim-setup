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

local extended_config = vim.tbl_extend('error', config, {
  install_script = [[
  ! test -f package.json && npm init -y --scope=lspinstall || true
  npm install diagnostic-languageserver@latest
  ]],
})

return extended_config
