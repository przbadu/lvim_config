local dap, dapui = require("dap"), require("dapui")

-- Open dap-ui when debugger is attached and running
dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end

-- Close dap-ui when debugger is finished running
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end

dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end
