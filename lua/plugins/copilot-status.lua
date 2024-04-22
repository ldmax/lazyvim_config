return {
  "ofseed/copilot-status.nvim",
  version = "*",
  config = function()
    require("lualine").setup({
      sections = {
        lualine_x = {
          -- Options with default values
          {
            "copilot",
            show_running = true,
            symbols = {
              status = {
                enabled = " ",
                disabled = " ",
              },
              spinners = require("copilot-status.spinners").dots,
            },
          },
        },
      },
    })
  end,
}
