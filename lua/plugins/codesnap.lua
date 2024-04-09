local function config()
    require("codesnap").setup({
        save_path = "~/Pictures",
        bg_color = "#535c68",
        watermark = "",
        mac_window_bar = false,
    })
end

return {
    "mistricky/codesnap.nvim",
    build = "make",
    config = config,
}
