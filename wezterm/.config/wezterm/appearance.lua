local wezterm = require("wezterm")
local mux = wezterm.mux
local module = {}

function module.apply(config)
    -- config.color_scheme = "GruvboxDark"
    config.color_scheme = "OneDark (base16)"
    config.font_size = 16

    config.window_padding = {
        left = 0,
        right = 0,
        top = 0,
        bottom = 0,
    }

    config.animation_fps = 60
    config.max_fps = 60

    config.show_tab_index_in_tab_bar = true
    config.switch_to_last_active_tab_when_closing_tab = true
    config.hide_tab_bar_if_only_one_tab = true

    wezterm.on("gui-startup", function(cmd)
        local tab, pane, window = mux.spawn_window(cmd or {})
        window:gui_window():toggle_fullscreen()
    end)

    config.native_macos_fullscreen_mode = true
end

return module
