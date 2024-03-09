local base_theme = require("lualine/themes/catppuccin")
local colors = require("catppuccin/palettes").get_palette("mocha")

base_theme.normal = {
    a = base_theme.normal.a,
    b = { bg = colors.mantle, fg = colors.blue },
    c = { bg = colors.base, fg = colors.text },

}
base_theme.insert.b = { bg = colors.mantle, fg = colors.green }
base_theme.visual.b = { bg = colors.mantle, fg = colors.pink }
base_theme.replace.b = { bg = colors.mantle, fg = colors.red }
base_theme.command.b = { bg = colors.mantle, fg = colors.yellow }

return base_theme
