require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = false,
    disable = {},
  },
  ensure_installed = {
    "tsx",
    "json",
    "yaml",
    "html",
    "hcl",
    "scss",
    "python",
    "typescript",
    "lua",
    "go",
    "gomod"
  },
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.json.used_by = "avsc"
