return {
   {
      "mfussenegger/nvim-dap",
      dependencies = {
         --"mfussenegger/nvim-dap-python",
         --"rcarriga/nvim-dap-ui",
         --"theHamsta/nvim-dap-virtual-text",
         --"nvim-telescope/telescope-dap.nvim",
      },
      config = function()
         local dap = require("dap")

         dap.adapters.python = {
            type = "executable",
            command = os.getenv("HOME") .. "/.virtualenvs/debugpy/bin/python",
            args = { "-m", "debugpy.adapter" },
         }

         dap.configurations.python = {
            {
               type = "python",
               request = "launch",
               name = "Launch file",
               program = "${file}",
            },
         }
      end,
   },
}
