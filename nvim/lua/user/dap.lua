vim.api.nvim_set_keymap("n", "<F4>", ":lua require'dap'.terminate()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<F5>", ":lua require'dap'.continue()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<F6>", ":lua require'dap'.step_over()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<F7>", ":lua require'dap'.step_into()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<F8>", ":lua require'dap'.step_out()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>b", ":lua require'dap'.toggle_breakpoint()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>B", ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoing condition: '))<CR>"
  , { noremap = true })

local widgets = require('dap.ui.widgets')
require('dap.ext.vscode').load_launchjs()

vim.keymap.set('n', '<leader>s', function() widgets.centered_float(widgets.scopes) end, {})

local dap, dapui = require("dap"), require("dapui")
dap.listeners.after.event_initialized["dapui_config"] = function()
  -- dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end
