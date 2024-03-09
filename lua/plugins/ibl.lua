local function config()
    vim.opt.list = true
    vim.opt.listchars:append "space:⋅"
    require("ibl").setup({
        indent = {
           char = "│",
        },
        whitespace = {
            highlight = { "Function", "Label" }
        },
        scope = {
            show_exact_scope = true,
        },
        exclude = {
            filetypes = { "dashboard" },
        }
    })
end

return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    config = config,
}
