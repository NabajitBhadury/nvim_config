return {
    "lukas-reineke/indent-blankline.nvim",

    config = function()
        vim.opt.list = true
        vim.opt.listchars:append("eol:↴")
        require("indent_blankline").setup {
            space_char_blankline = " ",
            show_current_context = true,
            show_current_context_start = true,
            context_patterns = {
              "class", "return", "function", "method", "^if", "^while", "jsx_element", "^for", "^object","^table", "block", "arguments", "if_statement", "else_clause", "jsx_element","jsx_self_closing_element", "try_statement", "catch_clause", "import_statement","operation_type"
  },
        }
    end
}
