vim.g.bufferline = {
	animation = true,
	tabpages = true,
	clickable = true,
	icon_close_tab = "",
	icon_separator_active = "",
	icon_separator_inactive = "",
}

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<C-k>', ':BufferPrevious<CR>', opts)
map('n', '<C-l>', ':BufferNext<CR>', opts)
map('n', '<C-c>', ':BufferClose<CR>', opts)