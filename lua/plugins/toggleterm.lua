return {
  {
    "akinsho/toggleterm.nvim",
    version = "2.7.0",
    config = function()
      require("toggleterm").setup({
        open_mapping = [[<c-\>]],
        shade_filetypes = {},
        shade_terminals = true,
        shading_factor = 1,
        start_in_insert = true,
        persist_size = true,
        direction = "float",
        close_on_exit = true,
        shell = vim.o.shell,
      })
    end,
  },
}
