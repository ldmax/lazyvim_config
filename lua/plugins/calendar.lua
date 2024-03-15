return {
  {
    "itchyny/calendar.vim",
    commit = "66e6d0955efb6beb68912dce3ff484e8805d975c",
    pin = true,
    config = function()
      vim.api.nvim_set_keymap("n", "<leader>cm", ":Calendar -month<CR>", { noremap = true })
    end,
  },
}
