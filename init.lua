local g = vim.opt
local base = require "base"
local keys = require "keys"
local plugins = require "plugins"
local commands = require "commands"
local theme = require "theme"
local lsp = require "lsp"

-- Disable mouse
vim.cmd "set mouse="

-- Base view
g.number = true
g.relativenumber = true
g.termguicolors = true

vim.cmd "colorscheme nord"
vim.cmd "set noshowmode" -- Я не знал как сделать иначе)
vim.cmd "set cc=90"

-- Plugins
require("plugins/dashboard-nvim")
require("plugins/lualine")
require("plugins/bufferline")
require("plugins/telescope")
require("plugins/nvim-tree")
require("plugins/nvim-treesitter")
require("plugins/cmp")
require("plugins/sessions")
require("plugins/indent-blankline")
require("plugins/nvim-comment")
require("plugins/nvim-navic")
require("nvim-autopairs").setup()
require("mason").setup()
-- require("nvim-surround").setup()

-- Fun
print("Do u wanna see my dotfiles?")
