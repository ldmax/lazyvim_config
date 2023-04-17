return {
  {
    "jackMort/ChatGPT.nvim",
    config = function()
      require("chatgpt").setup({
        keymaps = {
          submit = "<C-s>",
        },
      })
    end,
  },
}
