local wezterm = require "wezterm"
local config = {}

config.font = wezterm.font_with_fallback {
	"Hack Nerd Font",
	"Font Awesome 6 Free Regular",
	"FiraCode Nerd Font",
}
config.color_scheme = "Everforest Dark (Gogh)"
config.hide_tab_bar_if_only_one_tab = true
config.show_new_tab_button_in_tab_bar = false
config.use_fancy_tab_bar = false


config.keys = {
  {
      key = "w",
        mods = "CTRL|SHIFT",
        action = wezterm.action.CloseCurrentPane { confirm = true },
  },
  {
      key = "r",
        mods = "CTRL|SHIFT",
        action = wezterm.action.PromptInputLine {
          description = "Enter new name for tab",
          action = wezterm.action_callback(function(window, pane, line)
            -- line will be `nil` if they hit escape without entering anything
            -- An empty string if they just hit enter
            -- Or the actual line of text they wrote
            if line then
              window:active_tab():set_title(line)
            end
          end),
        },
  },
}

config.colors = {
  tab_bar = {
      background = "#2D353B",
  }
}

function tab_title(tab_info)
  local title = tab_info.tab_title
  -- if the tab title is explicitly set, take that
  if title and #title > 0 then
    return title
  end
  -- Otherwise, use the title from the active pane
  -- in that tab
  return tab_info.active_pane.title
end

wezterm.on(
  "format-tab-title",
  function(tab, tabs, panes, config, hover, max_width)
    local edge_background = "#2D353B"
    local background = "#374145"
    local foreground = "#7A8478"

    if tab.is_active then
      background = "#4F5B58"
      foreground = "#9DA9A0"
    elseif hover then
      background = "#3C4841"
      foreground = "#9DA9A0"
    end

    local edge_foreground = background

    local title = tab_title(tab)

    title = wezterm.truncate_right(title, max_width - 2)

    return {
      { Background = { Color = edge_background } },
      { Foreground = { Color = edge_foreground } },
      { Text = "" },
      { Background = { Color = background } },
      { Foreground = { Color = foreground } },
      { Text = title },
      { Background = { Color = edge_background } },
      { Foreground = { Color = edge_foreground } },
      { Text = " " },
    }
  end
)

config.window_padding = { -- required to remove padding around nvim
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

return config
