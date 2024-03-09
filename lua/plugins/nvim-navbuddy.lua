local function config()
    require("nvim-navbuddy").setup({
        window = {
            border = "rounded",
            size = "70%",
        }
    })
end

return {
    "SmiteshP/nvim-navbuddy",
    config = config,
    dependencies = { "SmiteshP/nvim-navic", "MunifTanjim/nui.nvim", "neovim/nvim-lspconfig",
                     "numToStr/Comment.nvim" },
}
