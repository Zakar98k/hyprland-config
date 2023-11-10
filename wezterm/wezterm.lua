local wezterm = require("wezterm")
local config = {}

-- ### FONT CONFIG ### ---
config.font_size = 12
config.font = wezterm.font_with_fallback({
	"deserted",
	{
		family = "Symbols Nerd Font",
	},
	"Noto Color Emoji",
	"Noto Sans CJK Regular",
	harfbuzz_features = { "calt=0", "clig=0", "liga=0" },
})

-- ### FONT RULES ### ---
config.font_rules = {
	{
		intensity = "Bold",
		italic = false,
		font = wezterm.font({
			family = "beachedttf",
		}),
	},

	{
		intensity = "Bold",
		italic = true,
		font = wezterm.font({
			family = "beachedttf",
			style = "Italic",
		}),
	},
}

config.enable_wayland = true
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false

config.inactive_pane_hsb = {
	saturation = 0.9,
	brightness = 0.8,
}

-- ### COLOR CONFIG ### ---
config.colors = {
	-- Start flavours
  foreground = '#c1c1c1',
  background = '#000000',

  cursor_bg = '#c1c1c1',
  cursor_fg = '#000000',

  cursor_border = '#c1c1c1',

  scrollbar_thumb = '#333333',
  split = '#121212',

  ansi = {
    '#000000',
    '#824655',
    '#468264',
    '#827d50',
    '#326482',
    '#645078',
    '#327d7d',
    '#c1c1c1',
  },
  brights = {
    '#000000',
    '#824655',
    '#468264',
    '#827d50',
    '#326482',
    '#645078',
    '#327d7d',
    '#eaeaea',
  },

  compose_cursor = '#8f534d',

  tab_bar = {
    background = "#000000",
    active_tab = {
      bg_color = "#121212",
      fg_color = "#c1c1c1",
      intensity = 'Normal',
      underline = 'Single',
      italic = true,
    },


    inactive_tab = {
      bg_color = "#000000",
      fg_color = "#505754",
    },

    inactive_tab_hover = {
      bg_color = "#121212",
      fg_color = "#505754",
    },

    new_tab = {
      bg_color = "#827d50",
      fg_color = "#000000",
    },

    new_tab_hover = {
      bg_color = "#468264",
      fg_color = "#000000",
    },
  }
	-- End flavours
}

return config
