return {
  "folke/twilight.nvim",
  config = function ()
    require("twilight").setup({
      options = {
        dimming = {
          alpha = 0.25, -- amount of dimming
          color = { "Normal", "#ffffff" },
          term_bg = "#000000", -- if guibg=NONE, this will be used to calculate text color
          inactive = false, -- when true, other windows will be fully dimmed (unless they contain the same buffer)
        },
        context = 10,
        treesitter = true,
        expand = {
          "function",
          "method",
          "table",
          "if_statement",
        },
      }
    })

    vim.cmd("augroup TwilightInsert")
    vim.cmd("autocmd!")
    vim.cmd("autocmd InsertEnter * Twilight")
    vim.cmd("autocmd InsertLeave * TwilightDisable")
    vim.cmd("augroup END")
  end
}

