-- Авто загрузка Packer
local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath("data").."/site/pack/packer/start/packer.nvim"
    if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({"git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
    -- Обновление Packer
    use "wbthomason/packer.nvim"


------------------------------------( Внешний вид )--------------------------------------
    -- Темы
    use "shaunsingh/nord.nvim"

    -- Lualine
    use {
        "nvim-lualine/lualine.nvim",
        requires = { "kyazdani42/nvim-web-devicons", opt = true }
    }

    -- Bufferline
    use {"akinsho/bufferline.nvim", requires = "nvim-tree/nvim-web-devicons"}

    -- Цветные отступы
    use "lukas-reineke/indent-blankline.nvim"

    -- Меню при старте
    use "glepnir/dashboard-nvim"


-----------------------------( Общие/для других плагинов )-------------------------------
    -- Treesitter
    use "nvim-treesitter/nvim-treesitter"

    -- Иконки, нужны для многих плагинов
    use "kyazdani42/nvim-web-devicons"

    use "nvim-lua/plenary.nvim"


--------------------------------( Плагины для удобства )----------------------------------
    -- Nvim Tree
    use {
        "nvim-tree/nvim-tree.lua",
        requires = {"nvim-tree/nvim-web-devicons"}
    }

    -- FZF (telescope)
    use {
	    "nvim-telescope/telescope.nvim", tag = "0.1.0",
	    requires = {"nvim-lua/plenary.nvim"}
    }

    -- Autopairs
    use "windwp/nvim-autopairs"

    -- Быстрая манипуляция скобочками, кавычками и т.д
    use "kylechui/nvim-surround"

    -- Удобное и быстрое комментирование кода
    use "terrortylor/nvim-comment"

    -- Sessions
    use "Shatur/neovim-session-manager"

    -- Wakatime
    use "wakatime/vim-wakatime"

    -- Discord
    use "andweeb/presence.nvim"

    -- Навигация по структуре
    use "SmiteshP/nvim-navic"


-----------------------------------( LSP/Completion )-------------------------------------
    -- LSP
    use "williamboman/mason-lspconfig.nvim"
    use "williamboman/mason.nvim"
    use "neovim/nvim-lspconfig"

    -- Completion
    use "L3MON4D3/LuaSnip"
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/cmp-buffer"
    use "hrsh7th/cmp-path"
    use "hrsh7th/cmp-cmdline"
    use "hrsh7th/nvim-cmp"

    if packer_bootstrab then
        require("packer").sync()
    end
end)
