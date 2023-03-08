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
    '', '', '',
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
    '', '', '', '',
}

require("dashboard").setup({
    theme = "doom",
    hide = {
        statusline = true,
    },
    config = {
        header = header_nvim2,
        center = {
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

            {
                icon = " ",
                icon_hl = "@property",
                desc = "Open directory",
                desc_hl = "@property",
                key = "d",
                key_hl = "@property",
                action = "NvimTreeToggle",
            },

            {
                icon = " ",
                icon_hl = "@debug",
                desc = "Find file in the directory",
                desc_hl = "@debug",
                key = "f",
                key_hl = "@debug",
                action = "Telescope find_files",
            }
        },
        packages = { enable = true },
        -- week_header = {
        --     enable = true,
        -- },
        footer = {"", "", "", "Let's get Rusty"},
    }

})
