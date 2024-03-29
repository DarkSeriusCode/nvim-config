local M = {}
local lsp = require("lspconfig")
local cmp_cap = require("cmp_nvim_lsp").default_capabilities()
local navic = require("nvim-navic")
local navbuddy = require("nvim-navbuddy")

local function navic_on_attach(client, bufnr)
    if client.server_capabilities.documentSymbolProvider then
        navic.attach(client, bufnr)
    end
end

function M.setup_lsp_handlers()
    require("mason-lspconfig").setup_handlers({
        function (server_name)
            lsp[server_name].setup({
                on_attach = function(client, bufnr)
                    navic_on_attach(client, bufnr)
                    navbuddy.attach(client, bufnr)
                end,

                capabilities = cmp_cap,
            })
        end,
    })
end

return M
