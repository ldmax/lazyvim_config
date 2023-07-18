return {
  "jalvesaq/Nvim-R",
  ft = { "r", "rmd" },
  tag = "v0.9.17",
  pin = true,
  config = function()
    local status, nvimr = pcall(require, "Nvim-R")
    if not status then
      return
    end
    require(nvimr).setup({})
  end,
}
