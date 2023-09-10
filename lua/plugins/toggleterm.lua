return{
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function ()
     local opts = {
       noremap = true,
       silent = true
     }

     require("toggleterm").setup({
       size = function (term)
         if term.direction == "horizontal" then
            return 15
        elseif term.direction == "verical" then
          return vim.o.columns*0.4
        end
       end,
       open_mapping = [[<C-\>]],
       float_opts = {
         border = "double",
         width = function ()
           return math.floor(vim.o.columns*0.4)
         end,
         heigth = function ()
          return math.floor(vim.o.lines*0.6)
         end
       }
     })

     vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
        vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
        vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
        vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
        vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
        vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
        vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)

        local terminal = require("toggleterm.terminal").Terminal
        local float = terminal:new({ direction = "float" })
        vim.keymap.set("n", "<A-i>", function()
            float:toggle()
        end, { noremap = true, silent = true })
        vim.keymap.set("t", "<A-i>", function()
            float:toggle()
        end, { noremap = true, silent = true })

        local function create_new_horizontal_term()
            local new_h = terminal:new({ direction = "horizontal" })
            new_h:open()
        end
        local function create_new_float_term()
          local new_f = terminal:new({direction = "float"})
          new_f:open()
        end

        vim.keymap.set("n", "<leader>th", create_new_horizontal_term, { noremap = true, silent = true })
        vim.keymap.set("n", "<leader>tf", create_new_float_term, {noremap = true, silent = true})
        vim.keymap.set("n", "<leader>ts", [[<Cmd>TermSelect<CR>]], { noremap = true, silent = true })
        vim.keymap.set("n", "<leader>trn", [[<Cmd>ToggleTermSetName<CR>]], { noremap = true, silent = true })

    end
}
