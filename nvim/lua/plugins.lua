require('plugin-dashboard');
require('plugin-lspconfig-mason');
require('plugin-nvimtree');
require('plugin-telescope');
require('plugin-treesitter');
require('plugin-formatter');
require('plugin-comment');
require('nightfox').setup({
  options = {
    -- Compiled file's destination location
    compile_path = vim.fn.stdpath("cache") .. "/nightfox",
    compile_file_suffix = "_compiled", -- Compiled file suffix
    transparent = false,    -- Disable setting background
    terminal_colors = true, -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
    dim_inactive = false,   -- Non focused panes set to alternative background
    module_default = true,  -- Default enable value for modules
    styles = {              -- Style to be applied to different syntax groups
      comments = "italic",
      keywords = "bold",
      types = "italic,bold",
      conditionals = "NONE",
      constants = "NONE",
      functions = "NONE",
      numbers = "NONE",
      operators = "NONE",
      strings = "NONE",
      variables = "NONE",
    },
    inverse = {             -- Inverse highlight for different types
      match_paren = false,
      visual = false,
      search = false,
    },
    modules = {             -- List of various plugins and additional options
      -- ...
    },
  },
  palettes = {},
  specs = {},
  groups = {},

})


require('plugin-toggle-term');

return
