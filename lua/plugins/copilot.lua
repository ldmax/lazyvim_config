return {
  {
    "github/copilot.vim",
    config = function()
      -- if I'm on Vultr, comment out this proxy
      -- if I'm on thinkpad, open this proxy
      if vim.fn.hostname() == "dan" then
        vim.g.copilot_proxy = "localhost:20171"
      end
      -- completion key for github copilot
      vim.g.copilot_no_tab_map = true
      vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
      -- vim.g.copilot_assume_mapped = true
      -- disable filetypes
      vim.g.copilot_filetypes = { xml = false }

      vim.cmd([[highlight CopilotSuggestion guifg=#555555 ctermfg=8]])
    end,
  },
}
