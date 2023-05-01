-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- Apply config here
config.enable_scroll_bar = true
config.hide_tab_bar_if_only_one_tab = true
config.color_scheme = "Catppuccin Mocha"
config.window_background_opacity = 0.9
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

config.keys = {
	{
		key = "F11",
		action = wezterm.action.ToggleFullScreen,
	},
}

return config
