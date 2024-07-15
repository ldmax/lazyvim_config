return {
  {
    "itchyny/calendar.vim",
    version = "*",
    config = function()
      vim.api.nvim_set_keymap("n", "<leader>cm", ":Calendar -month<CR>", { noremap = true })
    end,
  },
}
