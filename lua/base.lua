-- Tabs
vim.cmd "set expandtab"
vim.cmd "set tabstop=4"
vim.cmd "set shiftwidth=4"

-- Searching
vim.cmd "set ignorecase"
vim.cmd "set smartcase"
vim.cmd "set hlsearch"

-- Disable mouse
vim.cmd "set mouse="

-- Folds
vim.cmd "set foldmethod=indent"
vim.cmd "set foldnestmax=2"
vim.cmd "set nofoldenable"
vim.cmd "set foldlevel=10"

-- Base view
vim.cmd "set cursorline"
vim.cmd "set number"
vim.cmd "set relativenumber"
vim.cmd "set termguicolors"

-- Unlimeted undos
vim.cmd "set undofile"

vim.cmd "set completeopt=menu,menuone,noselect"
vim.cmd "set nocompatible"
vim.cmd "set ttyfast"
vim.cmd "set noshowmode"
vim.cmd "set cc=100"
vim.cmd [[command W :w]]
