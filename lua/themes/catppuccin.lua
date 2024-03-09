local colors = require("catppuccin/palettes").get_palette("mocha")

local theme_settings = {
    theme_config = {
        flavour = "mocha",
        show_end_of_buffer = true,
        integrations = {
            dashboard = true,
            indent_blankline = { enabled = true, },
            mason = true,
            telescope = { enabled = true, },
        }
    },

    lualine = {
        theme = require("themes/lualine-themes/catppuccin-mocha"),
        layout = require("themes/lualine-layouts/bubble")
    },

    navic_bar_theme = { bg = colors.mantle, fg = colors.text, gui = "italic" }
}

---------------------------------------------------------------------------------------------------

local function before()
    return [[
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
    ]]
end

local function after()
    return [[
        local utils = require("utils")
        local theme = require("themes/catppuccin")
        local theme_conf = theme.theme_settings
        local lualine_config = theme_conf.lualine.layout
                            .get_layout(theme_conf)

        utils.reconfig("lualine", lualine_config)
        utils.reconfig("bufferline")
    ]]
end

---------------------------------------------------------------------------------------------------

return {
    name = "Catppuccin",
    colorscheme = "catppuccin",
    before = before(),
    after = after(),
    theme_settings = theme_settings,
}
