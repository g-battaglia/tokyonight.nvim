local colors = require("tokyonightowl.colors").setup({ transform = true })
local config = require("tokyonightowl.config").options

local tokyonightowl = {}

tokyonightowl.normal = {
  a = { bg = colors.blue, fg = colors.black },
  b = { bg = colors.fg_gutter, fg = colors.blue },
  c = { bg = colors.bg_statusline, fg = colors.fg_sidebar },
}

tokyonightowl.insert = {
  a = { bg = colors.green, fg = colors.black },
  b = { bg = colors.fg_gutter, fg = colors.green },
}

tokyonightowl.command = {
  a = { bg = colors.yellow, fg = colors.black },
  b = { bg = colors.fg_gutter, fg = colors.yellow },
}

tokyonightowl.visual = {
  a = { bg = colors.magenta, fg = colors.black },
  b = { bg = colors.fg_gutter, fg = colors.magenta },
}

tokyonightowl.replace = {
  a = { bg = colors.red, fg = colors.black },
  b = { bg = colors.fg_gutter, fg = colors.red },
}

tokyonightowl.terminal = {
  a = {bg = colors.green1, fg = colors.black },
  b = {bg = colors.fg_gutter, fg=colors.green1 },
}

tokyonightowl.inactive = {
  a = { bg = colors.bg_statusline, fg = colors.blue },
  b = { bg = colors.bg_statusline, fg = colors.fg_gutter, gui = "bold" },
  c = { bg = colors.bg_statusline, fg = colors.fg_gutter },
}

if config.lualine_bold then
  for _, mode in pairs(tokyonightowl) do
    mode.a.gui = "bold"
  end
end

return tokyonightowl
