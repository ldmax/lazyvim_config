return {
  {
    "terrortylor/nvim-comment",
    commit = "e9ac16ab056695cad6461173693069ec070d2b23",
    pin = true,
    config = function()
      require("nvim_comment").setup({
        -- default shortcut:
        -- gcc: toggle comment selected lines
        -- gc: toggle comment current line
      })
    end,
  },
}
