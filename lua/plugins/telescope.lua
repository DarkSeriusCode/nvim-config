function config()
    require("telescope").setup({
        defaults = {
            layout_strategy = "vertical",
            prompt_prefix = ": ",
            selection_caret = " ",
            file_ignore_patterns = {"target", "build", "docs"},
        },
    })
end

return {
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.5",
        config = config,
        dependencies = { "nvim-lua/plenary.nvim" }
    }
}
