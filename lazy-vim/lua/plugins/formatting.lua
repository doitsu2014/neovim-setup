return {
  {
    "stevearc/conform.nvim",
    dependencies = { "mason.nvim" },
    opts = {
      -- LazyVim will use these options when formatting with the conform.nvim formatter
      format = {
        timeout_ms = 3000,
        async = false, -- not recommended to change
        quiet = false, -- not recommended to change
        lsp_fallback = true, -- not recommended to change
      },
      ---@type table<string, conform.FormatterUnit[]>
      formatters_by_ft = {
        lua = { "stylua" },
        fish = { "fish_indent" },
        sh = { "shfmt" },
        rust = { "rustfmt" },
      },
      -- The options you set here will be merged with the builtin formatters.
      -- You can also define any custom formatters here.
      ---@type table<string, conform.FormatterConfigOverride|fun(bufnr: integer): nil|conform.FormatterConfigOverride>
      formatters = {
        injected = { options = { ignore_errors = true } },
        my_rust_dioxus_formatter = {
          command = "dx",
          args = { "fmt" },
          -- Send file contents to stdin, read new contents from stdout (default true)
          -- When false, will create a temp file (will appear in "$FILENAME" args). The temp
          -- file is assumed to be modified in-place by the format command.
          stdin = true,
          -- When stdin=false, use this template to generate the temporary file that gets formatted
          tmpfile_format = ".conform.$RANDOM.$FILENAME",
          -- When returns false, the formatter will not be used
          condition = function(ctx)
            return vim.fs.basename(ctx.filename) ~= "README.md"
          end,
          -- Exit codes that indicate success (default { 0 })
          exit_codes = { 0, 1 },
          -- Set to false to disable merging the config with the base definition
          inherit = true,
        },
      },
    },
  },
}
