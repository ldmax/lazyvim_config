return {
  {
    "kdheepak/lazygit.nvim",
    version = "*",
    -- optional for floating window border decoration
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
    config = function()
      require("telescope").load_extension("lazygit")
    end,
  },
}
