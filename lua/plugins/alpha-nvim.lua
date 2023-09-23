return {
  -- add projects button on dashboard
  "goolord/alpha-nvim",
  commit = "234822140b265ec4ba3203e3e0be0e0bb826dff5",
  pin = true,
  opts = function(_, dashboard)
    local button = dashboard.button("p", " " .. " Projects", ":Telescope projects <CR>")
    button.opts.hl = "AlphaButtons"
    button.opts.hl_shortcut = "AlphaShortcut"
    table.insert(dashboard.section.buttons.val, 4, button)
  end,
}
