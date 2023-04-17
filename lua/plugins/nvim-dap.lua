return {
  {
    "mfussenegger/nvim-dap",
    config = function()
      require("dap").adapters.python = {
        type = "executable",
        command = "/usr/bin/python3",
        args = { "-m", "debugpy.adapter" },
      }

      require("dap").adapters.python = {
        type = "executable",
        command = "/usr/bin/python3",
        args = { "-m", "debugpy.adapter" },
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
          pythonPath = "/usr/bin/python3",
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
