return {
  {
    "hkupty/iron.nvim",
    -- tag = "v3.0",
    -- pin = true,
    -- version = "*",
    config = function()
      require("iron.core").setup({
        config = {
          -- Whether a repl should be discarded or not
          scratch_repl = true,
          -- Your repl definitions come here
          repl_definition = {
            sh = {
              -- Can be a table or a function that
              -- returns a table (see below)
              command = { "cmd" },
            },
            python = require("iron.fts.python").ipython,
            ocaml = {
              command = { "utop" },
            },
            js = { "node" },
            r = {
              command = { "radian" },
            },
            cs = {
              command = { "csharprepl" },
            },
          },
          -- How the repl window will be displayed
          -- See below for more information
          --repl_open_cmd = require('iron.view').bottom(40),
          repl_open_cmd = "vertical botright 70 split",
        },
        -- Iron doesn't set keymaps by default anymore.
        -- You can set them here or manually add keymaps to the functions in iron.core
        keymaps = {
          send_motion = "<space>sc",
          visual_send = "<space>vs",
          send_file = "<space>sf",
          send_line = "<space>pl",
          send_mark = "<space>sm",
          mark_motion = "<space>mc",
          mark_visual = "<space>mc",
          remove_mark = "<space>md",
          cr = "<space>s<cr>",
          interrupt = "<space>s<space>",
          exit = "<space>sq",
          clear = "<space>cl",
        },
        -- If the highlight is on, you can change how it looks
        -- For the available options, check nvim_set_hl
        highlight = {
          italic = true,
        },
        ignore_blank_lines = true, -- ignore blank lines when sending visual select lines
      })

      -- set shortcut for IronAttach and IronHide and IronFocus
      vim.api.nvim_set_keymap("n", "<leader>ia", ":IronAttach<CR>", { noremap = true })
      vim.api.nvim_set_keymap("n", "<leader>ih", ":IronHide<CR>", { noremap = true })
      vim.api.nvim_set_keymap("n", "<leader>if", ":IronFocus<CR>", { noremap = true })
    end,
  },
}
