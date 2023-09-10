return {
  "akinsho/bufferline.nvim",
  requires = { "nvim-web-devicons" },
  version = "*",
  config = function()
    require("bufferline").setup{
      options = {
        diagnostics = "nvim_lsp",
        separator_style = "slant",
      },
    }
  end,
}

