local utils = require("utils")
local lualine_theme = require("lualine/themes/gruvbox_dark")
local palette = require("gruvbox").palette

lualine_theme.normal = {
    a = { bg = palette.bright_blue, fg = palette.dark1, gui = "bold" },
    b = { bg = palette.dark1, fg = palette.bright_blue },
    c = { bg = palette.dark1, fg = palette.dark1 },
}

lualine_theme.insert = {
    a = { bg = palette.bright_green, fg = palette.dark1, gui = "bold" },
    b = { bg = palette.dark1, fg = palette.bright_green },
}
lualine_theme.visual = {
    a = { bg = palette.bright_purple, fg = palette.dark1, gui = "bold" },
    b = { bg = palette.dark1, fg = palette.bright_purple }
}
lualine_theme.replace.b = { bg = palette.dark1, fg = palette.bright_red }
lualine_theme.command = {
    a = { bg = palette.bright_yellow, fg = palette.dark1, gui = "bold" },
    b = { bg = palette.dark1, fg = palette.bright_yellow }
}

---------------------------------------------------------------------------------------------------

local theme_settings = {
    lualine = {
        theme = lualine_theme,
        layout = require("themes/lualine-layouts/boxes")
    },
    navic_bar_theme = { bg = palette.dark0, fg = palette.light0 },
}

---------------------------------------------------------------------------------------------------

local function preload()
    require("gruvbox").setup({
        contrast = "hard",
    })
end

local function postload()
    -- Disable braces highlight and change @import highlight to keyeord (red color in that theme)
    vim.api.nvim_set_hl(0, "@punctuation.bracket", { link = "@variable" })
    vim.api.nvim_set_hl(0, "@keyword.import", { link = "@keyword" })

    vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

    local lualine_config = theme_settings.lualine.layout.get_layout(theme_settings)
    utils.reconfig("lualine", lualine_config)
    utils.reconfig("bufferline")
end

---------------------------------------------------------------------------------------------------

return {
    name = "Gruvbox",
    colorscheme = "gruvbox",
    before = [[ require("themes/gruvbox_d").preload() ]],
    after = [[ require("themes/gruvbox_d").postload() ]],
    preload = preload,
    postload = postload,
}
