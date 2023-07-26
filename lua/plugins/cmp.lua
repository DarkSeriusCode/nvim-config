local cmp = require("cmp")
local settings = require("settings")

local function do_when(when, what)
    return function(fallback)
        if when() then
            what()
        else
            fallback()
        end
    end
end

local function inContexts(contexts)
    local context = require("cmp.config.context")

    for _, v in ipairs(contexts) do
        if context.in_treesitter_capture(v) then
            return true
        end
    end

    return false
end

-- Global
cmp.setup({
    enabled = function ()
        if vim.api.nvim_get_mode().mode == 'c' then
            return true
        else
            return not inContexts(settings.disable_cmp_in)
        end
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

