return {
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
        exclude = { "zig" },
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
