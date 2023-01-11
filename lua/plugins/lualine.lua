local navic = require("nvim-navic")
local nord = require("lualine.themes.nord")

-- Custom theme
local colors = {
    nord0  = "#2E3440",
    nord1  = "#3B4252",
    nord2  = "#434C5E",
    nord3  = "#4C566A",
    nord4  = "#D8DEE9",
    nord5  = "#E5E9F0",
    nord6  = "#ECEFF4",
    nord7  = "#8FBCBB",
    nord8  = "#88C0D0",
    nord9  = "#81A1C1",
    nord10 = "#5E81AC",
    nord11 = "#BF616A",
    nord12 = "#D08770",
    nord13 = "#EBCB8B",
    nord14 = "#A3BE8C",
    nord15 = "#B48EAD",
}

local no_bg = { bg = colors.nord0, fg = colors.nord5 }

nord.normal = {
    a = { bg = colors.nord9, fg = colors.nord1, gui = "bold" },
    b = { bg = colors.nord1, fg = colors.nord5 },
    c = no_bg,
}

nord.command = {
    a = { bg = colors.nord15, fg = colors.nord1, gui = "bold" },
    z = { bg = colors.nord15, fg = colors.nord1, gui = "bold" },
}

nord.replace = {
    a = { bg = colors.nord11, fg = colors.nord1, gui = "bold" },
    z = { bg = colors.nord11, fg = colors.nord1, gui = "bold" },
}


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
        color = { bg = colors.nord1, fg = colors.nord5, gui = "italic" }
    }
end

-- Returns custom file location
local function location_component()
    return "%l/%L %p%%"
end



require("lualine").setup({
    options = {
        theme = nord,
        section_separators = { left = "", right = "" },
        component_separators = { left = "|", right = "|" },
    },

    sections = {
        lualine_a = {
            {
                "mode",
                separator = { left = "", right = "" },
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
               separator = { right = "", left = "" },
            },
        },
    },
    winbar = {
        lualine_a = {
            navic_component(),
        },
    }
})
