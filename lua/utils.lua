local M = {}

function M.reconfig(plugin_name, opts)
    local require_path = "plugins/"..plugin_name
    require(require_path).config(opts or {})
end

return M
