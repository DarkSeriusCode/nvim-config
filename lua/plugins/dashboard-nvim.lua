local settings = require("settings")

require("dashboard").setup({
    theme = "hyper",
    hide = {
        statusline = true,
        tabline = true,
        winbar = true,
    },
    config = {
        header = settings.dashboard_header,
        project = { limit = 5 },
        mru = { limit = 5 },
        shortcut = {
            {
                icon = " ",
                icon_hl = "TSConstant",
                desc = "Open last session",
                desc_hl = "TSConstant",
                key = "s",
                key_hl = "TSConstant",
                action = "SessionManager load_current_dir_session",
            },

            {
                icon = " ",
                icon_hl = "Number",
                desc = "Update plugins",
                desc_hl = "Number",
                key = "u",
                key_hl = "Number",
                action = "PackerUpdate",
            },

            {
                icon = " ",
                icon_hl = "Character",
                desc = "Go outside and touch a grass",
                desc_hl = "Character",
                key = "q",
                key_hl = "Character",
                action = "q",
            },
        },
        packages = { enable = true },
        footer = {"", "", "", "I'm still trying to find a GF" },
    }

})
