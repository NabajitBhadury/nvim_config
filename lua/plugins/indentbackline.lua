return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {},

    config = function()
        vim.opt.list = true
        vim.opt.listchars:append("eol:↴")
        
        require("ibl").setup({
            indent = { char = "│" },
            scope = {
                enabled = true,
                show_start = true,
                show_end = false,
            },
        })
    end
}