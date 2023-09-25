return {
  {
    "akinsho/bufferline.nvim",
    config = function()
      require ("bufferline").setup({
        options = {
        diagnostics = "nvim_lsp",
        separator_style = "slant",
          offsets = {
            {
              filetype = "NvimTree",
              text = "EXPLORER",
              padding = 0,
              text_align = "center",
              highlight = "Offset",
            },
          },
        },
      })
    end,
  },
}
