local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.color_scheme = 'Catppuccin Mocha'
config.audible_bell = 'Disabled'
config.scrollback_lines = 20000
config.font = wezterm.font("RobotoMono Nerd Font")
config.font_size = 14.0

config.background = {
  {
    source = {
      File = os.getenv("HOME") .. "/Pictures/samurai.jpeg",
    },
    hsb = { brightness = 0.025 },
  }
}

return config

