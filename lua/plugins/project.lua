return {
  {
    "ahmedkhalf/project.nvim",
    config = function()
      require("project_nvim").setup()
    end,
    event = "VimEnter",
    cmd = "Telescope projects",
  },
}
