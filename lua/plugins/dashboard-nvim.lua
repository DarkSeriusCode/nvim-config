local db = require("dashboard")
local file_path = vim.fn.stdpath("config").."/static/bg.jpg"

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

-- db.preview_file_path = file_path
-- db.preview_command = "ueberzug"
-- db.preview_file_width = 30
-- db.preview_file_height = 12

db.custom_header = header_nvim2


db.custom_center = {
    {
        icon = '  ',
        desc = 'Recently latest session                  ',
        action ='SessionManager load_current_dir_session'
    },

    {
        icon = '  ',
        desc = 'Find  File                              ',
        action = 'Telescope find_files',
    },

    {
        icon = '  ',
        desc ='File Browser                            ',
        action = 'NvimTreeToggle',
    },

    {
        icon = ';-; ',
        desc = 'Go to real life!                       ',
        action = 'q',
    },

}

db.custom_footer = {
    'Have fun)',
    '',
}
