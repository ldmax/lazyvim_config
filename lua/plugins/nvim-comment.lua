return {
  {
    "terrortylor/nvim-comment",
    version = "*",
    config = function()
      require("nvim_comment").setup({
        -- default shortcut:
        -- gcc: toggle comment selected lines
        -- gc: toggle comment current line
      })
    end,
  },
}
