return {
  {
    "ahmedkhalf/project.nvim",
    -- commit = "8c6bad7d22eef1b71144b401c9f74ed01526a4fb",
    -- pin = true,
    version = "*",
    opts = {},
    event = "VeryLazy",
    config = function(_, opts)
      require("project_nvim").setup(opts)
      require("telescope").load_extension("projects")
    end,
  },
}
