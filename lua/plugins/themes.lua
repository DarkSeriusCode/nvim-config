local function get_all_themes()
    return {
        require("themes/catppuccin"),
        require("themes/gruvbox_d"),
    }
end

return {
    {
        "zaldih/themery.nvim",
        config = function ()
            require("themery").setup({
                themes = get_all_themes(),
            })
        end,
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
    },
    {
        "ellisonleao/gruvbox.nvim",
        name = "gruvbox_theme",
        config = function ()
            require("gruvbox").setup({
                inverse = false
            })
        end,
        priority = 1000,
    }
}
