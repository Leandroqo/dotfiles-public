if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'cohama/lexima.vim'


if has("nvim")
  Plug 'tpope/vim-surround'
  Plug 'neovim/nvim-lspconfig'

  " nvim completion 
  Plug 'hrsh7th/nvim-cmp'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'onsails/lspkind-nvim'

  " For vsnip user.
  Plug 'hrsh7th/cmp-vsnip'
  Plug 'hrsh7th/vim-vsnip'

  Plug 'glepnir/lspsaga.nvim'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

  " Telescope
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'

  Plug 'kyazdani42/nvim-web-devicons'
  "Plug 'hoob3rt/lualine.nvim'
  Plug 'nvim-lualine/lualine.nvim'

  " Tokyo Night
  Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

  " NerdTree
  "Plug 'preservim/nerdtree'

  " NvimTree
  Plug 'kyazdani42/nvim-tree.lua'

  " Harpoon
  Plug 'ThePrimeagen/harpoon'

endif

call plug#end()
