local dap, dapui = require("dap"), require("dapui")

dapui.setup()

-- Auto open/close of dap_ui on session start/end
dap.listeners.before.attach.dapui_config = function()
	dapui.open()
end
dap.listeners.before.launch.dapui_config = function()
	dapui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
	dapui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
	dapui.close()
end

vim.keymap.set("n", "<Leader>dc", dap.continue, { desc = "DAP: Continue" })
vim.keymap.set("n", "<Leader>dov", dap.step_over, { desc = "DAP: Step Over" })
vim.keymap.set("n", "<Leader>di", dap.step_into, { desc = "DAP: Step Into" })
vim.keymap.set("n", "<Leader>dou", dap.step_out, { desc = "DAP: Step Out" })

vim.keymap.set("n", "<Leader>tb", dap.toggle_breakpoint, { desc = "DAP: Toggle Breakpoint" })
vim.keymap.set("n", "<Leader>dui", dapui.toggle, { desc = "DAP UI: Toggle" })
