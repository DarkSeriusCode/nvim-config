local navic = require("nvim-navic")
local theme = require("lua.theme")

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
        color = theme.navic_bar_theme,
    }
end

-- Returns custom file location
local function location_component()
    return "%l/%L %p%%"
end

require("lualine").setup({
    options = {
        theme = theme.lualine_theme,
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
