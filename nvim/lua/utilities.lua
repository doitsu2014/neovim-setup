local M = {}

function M.install_lspservers(table) 
  local lspinstall = require'lspinstall'
  for k, v in pairs(table) do
    local is_installed = lspinstall.is_server_installed(v);
    if not lspinstall.is_server_installed(v) then
      print("Installing lsp server: "..v)
      lspinstall.install_server(v)
    end
  end
end


return M
