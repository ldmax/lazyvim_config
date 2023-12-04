return {
  {
    "iulas-reineke/headlines.nvim",
    config = function()
      require("headlines").setup({
        norg = {
          headline_highlights = false,
        },
      })
    end,
  },
}
