-- Themery block
-- This block will be replaced by Themery.
require("catppuccin").setup({
flavour = "mocha",
show_end_of_buffer = true,
integrations = {
dashboard = true,
indent_blankline = { enabled = true, },
mason = true,
telescope = { enabled = true, },
}
})


vim.cmd("colorscheme catppuccin")

local utils = require("utils")
local theme = require("themes/catppuccin")
local theme_conf = theme.theme_settings
local lualine_config = theme_conf.lualine.layout
.get_layout(theme_conf)

utils.reconfig("lualine", lualine_config)
utils.reconfig("bufferline")

vim.g.theme_id = 1
-- end themery block
