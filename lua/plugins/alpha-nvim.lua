return {
  -- add projects button on dashboard
  "goolord/alpha-nvim",
  commit = "9e33db324b8bb7a147bce9ea5496686ee859461d",
  optional = true,
  opts = function(_, dashboard)
    local button = dashboard.button("p", " " .. " Projects", ":Telescope projects <CR>")
    button.opts.hl = "AlphaButtons"
    button.opts.hl_shortcut = "AlphaShortcut"
    table.insert(dashboard.section.buttons.val, 4, button)
  end,
}
