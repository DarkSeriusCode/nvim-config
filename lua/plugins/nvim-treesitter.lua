local used_parsers = { "c", "lua", "rust", "asm", "cpp" }

local function config()
    require("nvim-treesitter.configs").setup({
        ensure_installed = used_parsers,
        highlight = { enable = true },
        autotag = { enable = true },
    })
end

return {
    "nvim-treesitter/nvim-treesitter",
    config = config,
}
