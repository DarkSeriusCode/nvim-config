require("catppuccin").setup({
    flavour = "mocha",
    show_end_of_buffer = true,
    integrations = {
        dashboard = true,
        indent_blankline = { enabled = true, },
        mason = true,
        telescope = { enabled = true, },
    }
})

vim.cmd.colorscheme "catppuccin"
