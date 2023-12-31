return {
    "mfussenegger/nvim-dap",
    priority = 500,
    config = function()
        local dap = require "dap"
        local kmap = vim.keymap.set
        local opts = { noremap = true, silent = true }

        kmap('n', '<leader>db', dap.toggle_breakpoint, opts)
        kmap('n', '<leader>dc', dap.continue, opts)
        kmap('n', '<leader>di', dap.step_into, opts)
        kmap('n', '<leader>do', dap.step_out, opts)
        kmap('n', '<leader>ds', dap.step_over, opts)
        kmap('n', '<leader>dr', dap.repl.open, opts)
        kmap('n', '<leader>dt', dap.terminate, opts)

        vim.fn.sign_define("DapBreakpoint", { text = "●", texthl = "", linehl = "", numhl = "" })

        local widgets = require "dap.ui.widgets"

        kmap('n', '<leader>dh', function()
            widgets.centered_float(widgets.scopes)
        end, opts)
        kmap('n', '<leader>dv', function()
            widgets.hover()
        end, opts)
    end,
}
