require("telescope").setup({
    defaults = {
        layout_strategy = "vertical",
        prompt_prefix = ": ",
        selection_caret = " ",
        file_ignore_patterns = {"target", "build", "docs"},
    },
})
