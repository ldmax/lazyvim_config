return {
  "neovim/nvim-lspconfig",
  tag = "v0.1.6",
  pin = true,
  opts = {
    diagnostics = {
      virtual_text = false,
    },
    servers = {
      pyright = {},
      tsserver = {},
    },
  },
}
