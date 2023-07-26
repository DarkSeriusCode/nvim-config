local g = vim.opt
require "plugins"
require "base"
require "keys"
require "commands"
require "theme"
require "lsp"
require "settings"

-- Disable mouse
vim.cmd "set mouse="

-- Base view
g.number = true
g.relativenumber = true
g.termguicolors = true

-- Unlimeted undos
g.undofile = true

vim.cmd "set noshowmode" -- Я не знал как сделать иначе)
vim.cmd "set cc=100"

local function hasConfig(plugin)
    local f = io.open(vim.fn.stdpath("config").."/lua/plugins/"..plugin..".lua", "r")
    if f ~= nil then
        io.close(f)
        return true
    else
        return false
    end
end

-- Plugins
local plugins = {"dashboard-nvim", "lualine", "bufferline", "telescope", "nvim-tree",
                 "nvim-treesitter", "cmp", "sessions", "indent-blankline", "nvim-comment",
                 "nvim-navic", "presence", "nvim-autopairs", "mason", "nvim-surround"}

for _, plugin in ipairs(plugins) do
    if hasConfig(plugin) then
        require("plugins/"..plugin)
    else
        require(plugin).setup()
    end
end

-- Fun
print("Do u wanna see my dotfiles?")
