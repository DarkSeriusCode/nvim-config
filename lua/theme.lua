-- Themery block
-- This block will be replaced by Themery.
require("themes/gruvbox_d").preload()

vim.cmd("colorscheme gruvbox")

require("themes/gruvbox_d").postload()
vim.g.theme_id = 2
-- end themery block
