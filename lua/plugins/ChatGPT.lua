return {
  {
    "jackMort/ChatGPT.nvim",
    event = "VeryLazy",
    version = "*",
    config = function()
      require("chatgpt").setup({
        chat = {
          keymaps = {
            close = { "jk", "kj", "<Esc>" },
            yank_last = "<C-y>",
            scroll_up = "<C-u>",
            scroll_down = "<C-d>",
            toggle_settings = "<C-o>",
            new_session = "<C-n>",
            cycle_windows = "<Tab>",
          },
          popup_input = {
            submit = "<C-j>",
          },
        },
      })
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
  },
}
