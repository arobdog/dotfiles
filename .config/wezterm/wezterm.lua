-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- Use the config_builder for clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

--config.background = {
--	{
--		source = {
--			File = "/home/alexr/Desktop/stuff/wallpapers/vertical/red-fractal.jpg",
--		},
--		hsb = {
--			brightness = 0.025,
--			hue = 1.0,
--			saturation = 1.0,
--		},
--		height = "Cover",
--		width = "Cover",
--		repeat_y = "NoRepeat",
--		repeat_x = "NoRepeat",
--		vertical_align = "Middle",
--		horizontal_align = "Center",
--	},
--}

-- Disable Wayland to avoid explicit sync protocol error
config.enable_wayland = false

-- Set rendering backend to OpenGL for better compatibility
config.front_end = "OpenGL"

-- Font configuration
config.font = wezterm.font({
	family = "Hasklug Nerd Font Mono",
	weight = "Regular",
})
config.font_size = 13.0
config.line_height = 1.0

-- Set max FPS
config.max_fps = 200

-- Optional: Ensure cursor theme compatibility
config.xcursor_theme = "Adwaita"

return config
