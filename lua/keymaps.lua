local telescope = require("telescope.builtin")

local function nset(key, cmd, opt)
    vim.keymap.set("n", key, cmd, opt)
end

-- Buffers
nset("<c-h>", "<cmd>bp<cr>")
nset("<c-l>", "<cmd>bn<cr>")
nset("<c-c>", "<cmd>bd<cr>")

-- NvimTree
nset("<c-n>", "<cmd>NvimTreeToggle<cr>")

-- Telescope

nset("<c-p>", telescope.find_files)
nset("<c-g>", telescope.treesitter)
