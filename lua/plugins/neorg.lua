return {
  {
    "nvim-neorg/neorg",
    -- tag = "v7.0.0",
    -- pin = true,
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
          ["core.dirman"] = {
            config = {
              workspaces = {
                default = "$HOME/norg",
                work = "$HOME/norg/work",
                home = "$HOME/norg/home",
                plan = "$HOME/norg/plan",
                trading = "$HOME/norg/trading",
                journal = "$HOME/norg/journal",
                org = "$HOME/org-roam",
                nvim = "$HOME/norg/nvim",
              },
              default_workspace = "default",
            },
          },
        },
      })
    end,
  },
}
