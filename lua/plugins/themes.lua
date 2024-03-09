local function get_all_themes()
    return {
        require("themes/catppuccin")
    }
end

return {
    {
        "zaldih/themery.nvim",
        config = function ()
            require("themery").setup({
                themes = get_all_themes(),
                themeConfigFile = vim.fn.stdpath("config").."/lua/theme.lua"
            })
        end,
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
    },
}
