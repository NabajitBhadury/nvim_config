return {
    "fedepujol/move.nvim",
    config = function ()
        vim.api.nvim_set_keymap('n', '<C-j>', ':MoveLine(1)<CR>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<C-k>', ':MoveLine(-1)<CR>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<leader>wf', ':MoveWord(1)<CR>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<leader>wb', ':MoveWord(-1)<CR>', { noremap = true, silent = true })
    end
}


