local function config()
    require("pomo").setup({
        notifiers = {
            {
                name = "Default",
                opts = {
                    sticky = false,
                }
            }
        }
    })
end

return {
    "epwalsh/pomo.nvim",
    version = "*",
    lazy = true,
    cmd = { "TimerStart", "TimerRepeat" },
    config = config,
    dependencies = { "rcarriga/nvim-notify" },
}
