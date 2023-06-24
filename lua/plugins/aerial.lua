return {
  {
    "stevearc/aerial.nvim",
    commit = "603c805d2d46deb3f9d492d829cc320ef0184d37",
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
