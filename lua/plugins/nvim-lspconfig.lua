-- This is to disable inline virtual text for diagnostics
return {
  "neovim/nvim-lspconfig",
  opts = {
    diagnostics = {
      virtual_text = false,
    },
  },
}
