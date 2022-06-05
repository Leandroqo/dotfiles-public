local actions = require('telescope.actions')

require('telescope').setup {
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close
      }
    }
  }
}

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', ';f', ':Telescope find_files<CR>', opts)
map('n', ';g', ':Telescope live_grep<CR>', opts)
map('n', '\\', ':Telescope help_tags<CR>', opts)
