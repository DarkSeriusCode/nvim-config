local highlights = require("nord").bufferline.highlights({
    italic = true,
    bold = true,
})

require("bufferline").setup({
    options = {
        -- Style
        indicator = {
            style = "underline",
        },
        buffer_close_icon = "",
        tab_size = 10,

        -- Offsets
        offsets = {
            {
            filetype = "NvimTree",
            text = "File Tree",
            highlight = "Directory",
            separator = true,
            }
        },
        
        -- LSP integration
        diagnostics = "nvim_lsp",
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
            local s = " "
            for e, n in pairs(diagnostics_dict) do
                    local sym = e == "error" and " " or (e == "warning" and " " or "" )
                    s = s .. n .. sym
            end
            return s
        end,
    },
})
