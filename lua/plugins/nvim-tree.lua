local function config()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    require("nvim-tree").setup({
        -- LSP integration
        diagnostics = {
            enable = true,
            -- Shows LPS diags in the nvim-tree signcolumn
            show_on_dirs = true,
            show_on_open_dirs = true,
            -- Disable LSP hints
            severity = {
                min = INFO,
            }
        },

        -- Git integration
        git = {
            ignore = false,
        },

        view = {
            width = 25,
            signcolumn = "auto",
        },

        renderer = {
            add_trailing = true,
            highlight_git = true,
            indent_markers = {
                enable = true,
            },
            icons = {
                glyphs = {
                    folder = {
                        arrow_closed = "",
                        arrow_open = "",
                    }
                }
            }
        }
    })
end

return {
    "nvim-tree/nvim-tree.lua",
    config = config,
    dependencies = { "nvim-tree/nvim-web-devicons" },
}
