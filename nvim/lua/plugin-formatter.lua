-- Utilities for creating configurations
local util = require "formatter.util"

-- Provides the Format and FormatWrite commands
require('formatter').setup {
  -- All formatter configurations are opt-in
  filetype = {
    lua = {
      -- Pick from defaults:
      require('formatter.filetypes.lua').stylua,

      -- ,or define your own:
      function()
        return {
          exe = "stylua",
          args = {
            "--search-parent-directories",
            "--stdin-filepath",
            util.escape_path(util.get_current_buffer_file_path()),
            "--",
            "-",
          },
          stdin = true,
        }
      end
    }
  }
}
