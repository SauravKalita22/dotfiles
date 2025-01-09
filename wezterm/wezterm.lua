local wezterm = require("wezterm")

config = wezterm.config_builder()

config = {
	automatically_reload_config = true,
	enable_tab_bar = false,
	window_close_confirmation = "NeverPrompt",
	window_decorations = "RESIZE",
	default_cursor_style = "SteadyBar",
	color_scheme = "Nord(Gogh)",
	font = wezterm.font("MesloLGL Nerd Font", { weight = "Bold", stretch = "Normal", style = "Normal" }),
	font_size = 18,
	background = {
		{
			source = {
				File = "/Users/%user%/Pictures/lights.jpg",
			},
			hsb = {
				hue = 1.0,
				saturation = 1.02,
				brightness = 0.25,
			},
			width = "100%",
			height = "100%",
		},
		{
			source = {
				Color = "#282c35",
			},
			width = "100%",
			height = "100%",
			opacity = 0.55,
		},
	},
	window_padding = {
		left = 3,
		right = 3,
		top = 2,
		bottom = 2,
	},
}

return config
