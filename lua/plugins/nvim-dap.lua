return {
  {
    "mfussenegger/nvim-dap",
    tag = "v0.7.0",
    pin = true,
    config = function()
      local py_exe = "/usr/bin/python3"
      if vim.fn.exists("g:os") == 0 then
        local is_windows = vim.fn.has("win32") == 1 or vim.fn.has("win64") == 1 or vim.fn.has("win16") == 1
        if is_windows then
          py_exe = "C:/Program Files/Python310/python.exe"
        end
      end
      require("dap").adapters.python = {
        type = "executable",
        command = py_exe,
        args = { "-m", "debugpy.adapter" },
        enrich_config = function() end,
      }

      require("dap").configurations.python = {
        {
          -- The first three options are required by nvim-dap
          type = "python", -- the type here established the link to the adapter definition: `dap.adapters.python`
          request = "launch",
          name = "Launch file",

          -- Options below are for debugpy
          -- see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settingsfor
          -- for supported options

          program = "${file}", -- This configuration will launch the current file if used.
          pythonPath = py_exe,
        },
      }
    end,
    keys = {
      { "<space>dt", "<cmd>DapToggleBreakpoint<cr>", desc = "Toggle breakpoint" },
      { "<space>dc", "<cmd>DapContinue<cr>", desc = "Continue" },
      { "<space>di", "<cmd>DapStepInto<cr>", desc = "Step into" },
      { "<space>dr", "<cmd>DapStepOver<cr>", desc = "Step over" },
      { "<space>do", "<cmd>DapStepOut<cr>", desc = "Step out" },
    },
  },
}
