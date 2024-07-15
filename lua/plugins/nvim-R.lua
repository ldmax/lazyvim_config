return {
  "jalvesaq/Nvim-R",
  ft = { "r", "rmd" },
  version = "*",
  config = function()
    local status, nvimr = pcall(require, "Nvim-R")
    if not status then
      return
    end
    require(nvimr).setup({})
  end,
}
