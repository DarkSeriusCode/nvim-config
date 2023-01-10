local lsp = require("lspconfig")
local cmp_cap = require("cmp_nvim_lsp").default_capabilities()
local navic = require("nvim-navic")

local function navic_on_attach(client, bufnr)
    if client.server_capabilities.documentSymbolProvider then
        navic.attach(client, bufnr)
    end
end

local servers = {lsp.rust_analyzer, lsp.clangd, lsp.sumneko_lua}

for _, server in ipairs(servers) do
    server.setup({
        on_attach = function(client, bufnr)
            navic_on_attach(client, bufnr)
        end,

       capabilities = cmp_cap,
    })
end
