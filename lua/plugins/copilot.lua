return {
  {
    -- below is configuration for copilot.lua
    "zbirenbaum/copilot.lua",
    version = "*",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({})
      -- if I'm on thinkpad, open this proxy
      if vim.fn.hostname() == "dan" then
        vim.g.copilot_proxy = "localhost:20171"
      end
    end,
  },
}
