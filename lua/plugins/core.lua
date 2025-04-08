return {
  {
    "catppuccin/nvim",
    opts = {
      styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { "italic" }, -- Change the style of comments
        conditionals = {},
        loops = {},
        functions = {},
        keywords = { "bold" },
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = { "italic" },
        types = {},
        operators = {},
        miscs = {}, -- Uncomment to turn off hard-coded styles
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = { "zig", "cpp", "c" },
    },
  },
  {
    "neovim/nvim-lspconfig",
    -- https://www.lazyvim.org/plugins/lsp
    opts = {
      inlay_hints = {
        enabled = true,
        exclude = { "zig", "c" },
      },
      servers = {
        zls = {
          mason = false, -- user lastest zls on github
          cmd = { "/Users/cfw/.local/bin/zls" },
          filetypes = { "zig", "zon" },
          settings = {
            zls = {
              enable_snippets = true,
            },
          },
        },
      },
    },
  },
}
