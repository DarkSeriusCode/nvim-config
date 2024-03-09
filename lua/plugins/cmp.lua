local function do_when(when, what)
    return function(fallback)
        if when() then
            what()
        else
            fallback()
        end
    end
end

local function in_contexts(contexts)
    local context = require("cmp.config.context")

    for _, v in ipairs(contexts) do
        if context.in_treesitter_capture(v) then
            return true
        end
    end

    return false
end

local function setup()
    local cmp = require("cmp")
    -- Global
    cmp.setup({
        enabled = function ()
            -- If we're in cmd mode or editing a file (exclude comments and string)
            return vim.api.nvim_get_mode().mode == 'c' or not in_contexts({ "comment", "string" })
        end,

        snippet = {
            expand = function(args)
                require("luasnip").lsp_expand(args.body)
            end,
        },

        preselect = cmp.PreselectMode.None,

        window = {
            completion = cmp.config.window.bordered(),
        },

        sources = cmp.config.sources({
            { name = "nvim_lsp", group_index = 1 },
            { name = "buffer", group_index = 2 },
        }),

        mapping = {
            ["<tab>"] = do_when(cmp.visible, cmp.select_next_item),
            ["<s-tab>"] = do_when(cmp.visible, cmp.select_prev_item),
            ["<cr>"] = do_when(cmp.visible, cmp.confirm),
            ["<c-up>"] = cmp.mapping.scroll_docs(-2),
            ["<c-down>"] = cmp.mapping.scroll_docs(2),
        },

        experimental = {
            ghost_text = true,
        }
    })

    -- command line (:)
    cmp.setup.cmdline(":", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
            { name = "path" },
            { name = "cmdline" },
        }),
    })

    -- command line (/)
    cmp.setup.cmdline("/", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
            { name = "buffer" }
        })
    })
end

return {
    "hrsh7th/nvim-cmp",
    config = config,
    dependencies = { "hrsh7th/cmp-cmdline", "hrsh7th/cmp-path", "hrsh7th/cmp-buffer",
                     "hrsh7th/cmp-nvim-lsp", "L3MON4D3/LuaSnip" },
}
