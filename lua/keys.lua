local tscope = require("telescope.builtin")

local function set_fabric(mode)
    return function (key, cmd, opt)
        vim.keymap.set(mode, key, cmd, opt)
    end
end

local nset = set_fabric("n")

-- Перемещение между буферами
nset("<c-h>", "<cmd>bp<cr>")
nset("<c-l>", "<cmd>bn<cr>")
nset("<c-c>", "<cmd>bd<cr>")

-- Nvim Tree
nset("<c-n>", "<cmd>NvimTreeToggle<cr>")

-- Telescope
nset("<c-p>", tscope.find_files, {})
nset("<c-g>", tscope.treesitter, {})

