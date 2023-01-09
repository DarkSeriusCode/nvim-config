local g = vim.opt

--[[ ------------------------- [ ПОИСК ] ------------------------- ]] 

-- Игнорирование регистра при поиске
g.ignorecase = true
g.smartcase = true

-- Подсветка при поиске
g.hlsearch = true


--[[ ------------------------- [ ТАБЫ ] ------------------------- ]] 

-- Размер таба
local tabsz = 4

g.tabstop = tabsz
--g.softtabstop = tabsz
g.shiftwidth = tabsz

-- Пробелы вместо табов
g.expandtab = true

--[[ ------------------------- [ ПОДСКАЗКИ ] ------------------------- ]] 
vim.cmd "set completeopt=menu,menuone,noselect"
