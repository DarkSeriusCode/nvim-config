local ascii = require("ascii")

local M = {
    -- Theme flavour
    theme_flavour = "mocha",

    -- Dashboard
    dashboard_header = ascii.get_random("text", "neovim"),

    -- Completion
    disable_cmp_in = {"comment", "string"},

    -- Telescope
    telescope_layout = "vertical",
}

return M
