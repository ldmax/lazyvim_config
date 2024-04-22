return {
  {
    "stevearc/aerial.nvim",
    -- commit = "a2368d1c4bdb149679fbcbd16a288e5e0bee8156",
    -- pin = true,
    version = "*",
    config = function()
      require("aerial").setup({
        -- optionally use on_attach to set keymaps when aerial has attached to a buffer
        on_attach = function(bufnr)
          -- Jump forwards/backwards with '{' and '}'
          vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr })
          vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr })
          -- You probably also want to set a keymap to toggle aerial
          vim.keymap.set("n", "<leader>a", "<cmd>AerialToggle!<CR>")
        end,
      })
    end,
  },
}
