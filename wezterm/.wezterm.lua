-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "Night Owl (Gogh)"
config.font = wezterm.font_with_fallback({
	{ family = "MonoLisa Nerd Font", weight = "Medium" },
	"Noto Sans",
	"Noto Color Emoji",
})
config.harfbuzz_features = { "zero", "ss04", "ss07", "ss08", "ss09" }
config.font_size = 14.0

config.enable_tab_bar = false

config.mouse_bindings = {
	-- Ctrl-click will open the link under the mouse cursor
	{
		event = { Up = { streak = 1, button = "Left" } },
		mods = "CTRL",
		action = wezterm.action.OpenLinkAtMouseCursor,
	},
}

-- and finally, return the configuration to wezterm
return config
