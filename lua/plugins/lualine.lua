local navic = require("nvim-navic")

local catppuccin_theme = require("lualine.themes.catppuccin")
local colors = require("catppuccin.palettes").get_palette("mocha")

local default_bg = colors.mantle
local no_bg = { bg = colors.base, fg = colors.text }

catppuccin_theme.normal = {
    a = catppuccin_theme.normal.a,
    b = { bg = default_bg, fg = colors.blue },
    c = no_bg,
}

catppuccin_theme.insert.b = { bg = default_bg, fg = colors.green }
catppuccin_theme.visual.b = { bg = default_bg, fg = colors.pink }
catppuccin_theme.replace.b = { bg = default_bg, fg = colors.red }
catppuccin_theme.command.b = { bg = default_bg, fg = colors.yellow }

---------------------------- Coponents ----------------------------
-- Returns navic location
local function navic_component()
    return {
        function()
            local location = nil
            if navic.is_available() then
                location = navic.get_location()
            end
            if #location == 0 then
                location = " "
            end
            return location
        end,
        color = { bg = colors.mantle, fg = colors.text, gui = "italic" }
    }
end

-- Returns custom file location
local function location_component()
    return "%l/%L %p%%"
end



require("lualine").setup({
    options = {
        theme = catppuccin_theme,
        section_separators = { left = "", right = "" },
        component_separators = { left = "|", right = "|" },
    },

    sections = {
        lualine_a = {
            {
                "mode",
                separator = { left = "", right = "" },
            }
        },
        lualine_b = {
            {
                "filetype",
                icon_only = true,
                separator = { right = "" },
                padding = { right = 0, left = 1 },
            },
            {
                "filename",
                newfile_status = true,
                separator = { left = "", right = "" },
                padding = { left = 1 },
                symbols = {
                    modified = " ",
                    readonly = " ",
                    unnamed = "",
                    newfile = " ",
                }
            },
            {
                "diagnostics",
                sections = { "error", "warn", "info", "hint" },
                symbols = {
                    error = " ",
                    warn = " ",
                    info = " ",
                    hint = " ",
                },
                separator = { right = "" },
            },
        },
        lualine_c = {},
        lualine_x = {},
        lualine_y = {
            {
                "diff",
                symbols = {
                    added = "",
                    modified = " ",
                    removed = " ",
                },
            },
            "branch",
        },
        lualine_z = {
            {
               location_component,
               separator = { right = "", left = "" },
            },
        },
    },
    winbar = {
        lualine_a = {
            navic_component(),
        },
    }
})
