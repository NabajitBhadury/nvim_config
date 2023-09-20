return {
    "zbirenbaum/copilot-cmp",
    dependencies = { "zbirenbaum/copilot.lua" },
    config = function()
        require("copilot").setup({
            suggetion = { enabled = true, },
            panel = { enabled = true },
        })
        require("copilot_cmp").setup()
    end
}
