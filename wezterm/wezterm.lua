local wezterm = require "wezterm"
local config = {}

config.font = wezterm.font "Hack Nerd Font"
config.color_scheme = 'Everforest Dark (Gogh)'
config.hide_tab_bar_if_only_one_tab = true

config.window_padding = { -- required to remove padding around nvim
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

return config
