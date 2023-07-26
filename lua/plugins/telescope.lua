local settings = require("settings")

require("telescope").setup({
    defaults = {
        layout_strategy = settings.telescope_layout,
        prompt_prefix = ": ",
        selection_caret = " ",
        file_ignore_patterns = {"target", "build", "docs"},
    },
})
