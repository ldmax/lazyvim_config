return {
  "rcarriga/nvim-notify",
  version = "*",
  config = function()
    require("notify").setup({
      background_colour = "#000000",
    })
  end,
}
