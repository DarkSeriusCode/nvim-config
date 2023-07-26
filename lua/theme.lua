local M = {}
local settings = require("settings")
local catppuccin_theme = require("lualine.themes.catppuccin")
local colors = require("catppuccin.palettes").get_palette(settings.theme_flavour)

require("catppuccin").setup({
    flavour = settings.theme_flavour,
    integrations = {
        dashboard = true,
        indent_blankline = { enabled = true, },
        mason = true,
        telescope = { enabled = true, },
    }
})

catppuccin_theme.normal = {
    a = catppuccin_theme.normal.a,
    b = { bg = colors.mantle, fg = colors.blue },
    c = { bg = colors.base, fg = colors.text },

}
catppuccin_theme.insert.b = { bg = colors.mantle, fg = colors.green }
catppuccin_theme.visual.b = { bg = colors.mantle, fg = colors.pink }
catppuccin_theme.replace.b = { bg = colors.mantle, fg = colors.red }
catppuccin_theme.command.b = { bg = colors.mantle, fg = colors.yellow }

M.navic_bar_theme = { bg = colors.mantle, fg = colors.text, gui = "italic" }
M.lualine_theme = catppuccin_theme

vim.cmd.colorscheme "catppuccin"

return M

