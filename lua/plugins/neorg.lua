return {
  {
    "nvim-neorg/neorg",
    run = ":Neorg sysnc-parsers",
    dependencies = {
      {
        "vhyrro/luarocks.nvim",
        priority = 1000,
        config = true,
      },
      "nvim-treesitter/nvim-treesitter",
    },
    lazy = false,
    version = "*",
    config = function()
      require("neorg").setup({
        load = {
          ["core.defaults"] = {},
          ["core.concealer"] = {},
          ["core.ui.calendar"] = {},
          ["core.completion"] = {
            config = {
              engine = "nvim-cmp",
            },
          },
          ["core.dirman"] = {
            config = {
              workspaces = {
                default = "$HOME/work",
                life = "$HOME/life",
                work = "$HOME/norg/work",
                plan = "$HOME/norg/plan",
                trading = "$HOME/norg/trading",
                tech = "$HOME/norg/tech",
              },
              default_workspace = "default",
            },
          },
        },
      })
    end,
  },
}
