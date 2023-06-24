return {
  {
    "terrortylor/nvim-comment",
    commit = "e9ac16ab056695cad6461173693069ec070d2b23",
    config = function()
      require("nvim_comment").setup({
        vim.keymap.set("v", "<leader>/", "<CMD>CommentToggle<CR>", { noremap = true, silent = true }),
      })
    end,
  },
}
