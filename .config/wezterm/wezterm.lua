-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

config.background = {
	{
		source = {
			File = "/Users/alexrobinson/Wallpapers/vertical/red-fractal.jpg",
		},
		hsb = {
			brightness = 0.050,
			hue = 1.0,
			saturation = 1.0,
		},
		height = "Cover",
		width = "Cover",
		repeat_y = "NoRepeat",
		repeat_x = "NoRepeat",
		vertical_align = "Middle",
		horizontal_align = "Center",
	},
}

config.font = wezterm.font({
	family = "Hasklug Nerd Font Mono",
	weight = "Regular",
})

config.font_size = 13.0
config.line_height = 1.0

config.max_fps = 144

return config
