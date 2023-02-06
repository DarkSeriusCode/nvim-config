-- Custom headers

local header_nvim1 = {
    ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
    ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
    ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
    ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
    ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
    ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
    '',
    '',
}

local header_nvim2 = {
    '     _           _                      _             ',
    '             ▕                                 ',
    '  ▕ ███       ▕│█     ___   ___                 ',
    '  ▕││███     ▕│███▕│         █   ██      ',
    '  ▕││  ███   ▕│███▕│▕│ ▁ ▕│    ▕│██          ',
    '  ▕││  ▕│███ ▕│███▕│▕│   ▕│    ▕│██  ◢◣  ◢  ',
    '  ▕││  ▕│  ███│███▕│  ▁▁  ▁   ██   ▜█ ██  ',
    '     ▕│    ████      ‾‾    ‾                 ',
    '     ▕│                                        ',
    '                 ‾                      ‾             ',
    '',
}

require("dashboard").setup({
    theme = "hyper",
    hide = {
        statusline = true,
    },
    config = {
        shortcut = {
            {
                desc = " Open last session",
                action = "SessionManager load_current_dir_session",
                group = "Statement",
                key = "s",
            },
            {
                desc = " Update plugins",
                action = "PackerUpdate",
                group = "Number",
                key = "u",
            },
            {
                desc = " Go to the street and touch grass",
                action = "q",
                group = "Character",
                key = "q",
            },
        },
        mru = {
            limit = 5,
        },
        week_header = {
            enable = true,
        },
        footer = {"", "", "", "You are still alone! Have fun, programmer ;)"},
    }

})
