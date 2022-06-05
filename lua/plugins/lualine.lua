-- Bubbles config for lualine
-- Author: lokesh-krishna
-- MIT license, see LICENSE for more details.

-- stylua: ignore
local colors = {
  blue   = '#80a0ff',
  cyan   = '#79dac8',
  black  = '#080808',
  white  = '#c6c6c6',
  red    = '#ff5189',
  violet = '#d183e8',
  grey   = '#303030',
  custom = '#1f2335',
}

local bubbles_theme = {
  normal = {
    a = { fg = colors.custom, bg = colors.violet },
    b = { fg = colors.white, bg = colors.grey },
    c = { fg = colors.custom, bg = colors.custom },
  },

  insert = { a = { fg = colors.custom, bg = colors.blue } },
  visual = { a = { fg = colors.custom, bg = colors.cyan } },
  replace = { a = { fg = colors.custom, bg = colors.red } },

  inactive = {
    a = { fg = colors.white, bg = colors.custom },
    b = { fg = colors.white, bg = colors.custom },
    c = { fg = colors.custom, bg = colors.custom },
  },
}

require('lualine').setup {
  options = {
    theme = bubbles_theme,
    component_separators = '|',
    section_separators = { left = '', right = '' },
  },
  sections = {
    lualine_a = {
      { 'mode', separator = { left = '' }, right_padding = 2 },
    },
    lualine_b = { 'filename', 'branch' },
    lualine_c = { 'fileformat' },
    lualine_x = {},
    lualine_y = { 'filetype', 'progress' },
    lualine_z = {
      { 'location', separator = { right = '' }, left_padding = 2 },
    },
  },
  inactive_sections = {
    lualine_a = { 'filename' },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = { 'location' },
  },
  tabline = {},
  extensions = {},
}
