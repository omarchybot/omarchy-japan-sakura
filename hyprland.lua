-- Japan Sakura theme overrides for Hyprland
-- Slick, modern aesthetic with cherry blossom accents and frosted glass blur

local active_border_color = { colors = { "rgba(ff75a0ee)", "rgba(e58fb4ee)", "rgba(7dcfffee)" }, angle = 45 }
local inactive_border_color = "rgba(352c3f88)"

hl.config({
  general = {
    border_size = 2,
    gaps_in = 6,
    gaps_out = 12,
    col = {
      active_border = active_border_color,
      inactive_border = inactive_border_color,
    },
  },

  decoration = {
    rounding = 12,
    rounding_power = 2,

    active_opacity = 0.96,
    inactive_opacity = 0.90,

    shadow = {
      enabled = true,
      range = 26,
      render_power = 4,
      color = "rgba(00000066)",
      color_inactive = "rgba(00000033)",
    },

    blur = {
      enabled = true,
      size = 8,
      passes = 3,
      new_optimizations = true,
      ignore_opacity = true,
      noise = 0.015,
      contrast = 0.95,
      brightness = 0.92,
      vibrancy = 0.28,
      popups = true,
      popups_ignorealpha = 0.2,
    },
  },

  group = {
    col = {
      border_active = active_border_color,
      border_inactive = inactive_border_color,
    },
    groupbar = {
      font_family = "sans-serif",
      font_size = 11,
      height = 24,
      text_color = "rgb(f5e6eb)",
      col = {
        active = "rgba(ff75a055)",
        inactive = "rgba(201c2955)",
      },
    },
  },
})

-- Layer rules for Omarchy frosted glass surfaces
local blur_surfaces = {
  "omarchy-bar",
  "omarchy-menu",
  "omarchy-clipboard",
  "omarchy-emojis",
  "omarchy-notifications",
  "omarchy-osd",
  "omarchy-polkit",
  "omarchy-reminders",
  "omarchy-image-selector",
}

for _, surface in ipairs(blur_surfaces) do
  hl.layer_rule({
    match = { namespace = "^" .. surface .. "$" },
    blur = true,
    ignore_alpha = 0.2,
  })
end
