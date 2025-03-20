local wezterm = require("wezterm")
local module = {}

function module.apply(config)
    config.default_cwd = "/Users/kushkansara/Projects"
    config.scrollback_lines = 5000
end

return module
