return {
  "neovim/nvim-lspconfig",
  tag = "v0.1.6",
  pin = true,
  opts = function(_, opts)
    opts.diagnostics = {
      virtual_text = false,
    }
  end,
}
