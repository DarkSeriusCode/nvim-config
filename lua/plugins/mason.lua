local used_servers = { "asm_lsp", "clangd", "cmake", "hls", "lua_ls", "rust_analyzer" }

function config()
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
