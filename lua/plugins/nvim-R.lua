return {
  "jalvesaq/Nvim-R",
  ft = { "r", "rmd" },
  version = "*",
  pin = true,
  config = function()
    local status, nvimr = pcall(require, "Nvim-R")
    if not status then
      return
    end
    nvimr.setup({})
  end,
}
