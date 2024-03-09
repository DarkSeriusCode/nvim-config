local function simple_plugin(name, config)
    return {
        name,
        config = config or true
    }
end

return {
    simple_plugin("windwp/nvim-autopairs"),
    simple_plugin("terrortylor/nvim-comment", function ()
        require("nvim_comment").setup({
            comment_empty = false,
        })
    end),
    simple_plugin("Shatur/neovim-session-manager", function ()
        require("session_manager").setup({
            autoload_mode = require("session_manager.config").AutoloadMode.Disabled,
        })
    end),
    simple_plugin("wakatime/vim-wakatime", function () end),
}
