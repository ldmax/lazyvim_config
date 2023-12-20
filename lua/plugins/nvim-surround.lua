return {
  "kylechui/nvim-surround",
  tag = "v2.1.0", -- Use for stability; omit to use `main` branch for the latest features
  pin = true,
  event = "VeryLazy",
  config = function()
    require("nvim-surround").setup({})
  end,
}
