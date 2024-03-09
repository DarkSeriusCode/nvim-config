local function config(opts)
    require("lualine").setup(opts)
end

return {
    "nvim-lualine/lualine.nvim",
    opts = {},
    config = config,
    dependencies = { "nvim-tree/nvim-web-devicons" },
}
