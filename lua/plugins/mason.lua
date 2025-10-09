local used_servers = { "clangd", "lua_ls" }
-- Install rust-analyzer@2023...

local function config()
    require("mason").setup()

    require("mason-lspconfig").setup({
        ensure_installed = used_servers,
    })
end

return {
    "williamboman/mason.nvim",
    config = config,
    dependencies = { "neovim/nvim-lspconfig", "williamboman/mason-lspconfig.nvim" }
}
