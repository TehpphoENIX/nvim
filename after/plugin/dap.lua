local dap = require("dap")
local dapui = require("dapui")

require("mason").setup()
require("mason-nvim-dap").setup({
    handlers = {},
    ensure_installed = {
        "codelldb",
        "debugpy",
    }
})

dapui.setup()
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

vim.keymap.set("n", "<leader>db", function() dap.toggle_breakpoint() end, { noremap = true, desc = "Toggle breakpoint" })
vim.keymap.set("n", "<leader>dr", function()
    dap.continue()
end, { noremap = true, desc = "Run/continue debugger" })
