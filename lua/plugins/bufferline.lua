local function config()
    require("bufferline").setup({
        options = {
            -- Style
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
            diagnostics_indicator = function(_, _, diagnostics_dict, _)
                local s = " "
                for e, n in pairs(diagnostics_dict) do
                        local sym = e == "error" and " " or (e == "warning" and " " or "" )
                        s = s .. n .. sym
                end
                return s
            end,
        },
    })
end

return {
    "akinsho/bufferline.nvim",
    config = config,
    lazy = true,
    dependencies = { "nvim-tree/nvim-web-devicons" },
}
