vim.cmd [[ packadd packer.nvim ]]

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'terroo/vim-simple-emoji'

  --> THEMES
  use 'navarasu/onedark.nvim'
  use 'folke/tokyonight.nvim'
  use 'tiagovla/tokyodark.nvim'
  use 'shaunsingh/moonlight.nvim'
  use 'marko-cerovac/material.nvim'
  use 'Shatur/neovim-ayu'

  use 'kyazdani42/nvim-tree.lua'
  use 'kyazdani42/nvim-web-devicons'
  use {
    'nvim-telescope/telescope.nvim',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  use 'nvim-treesitter/nvim-treesitter'
  use 'romgrk/barbar.nvim' --> Tabs for neovim
  use 'nvim-lualine/lualine.nvim'
  use 'ggandor/lightspeed.nvim'


  --> lsp
  use "neovim/nvim-lspconfig" --> Collection of configurations for built-in LSP client
  use "williamboman/nvim-lsp-installer" --> Companion plugin for lsp-config, allows us to seamlesly install language servers
  use "jose-elias-alvarez/null-ls.nvim" --> inject lsp diagnistocs, formattings, code actions, and more ...
  use "tami5/lspsaga.nvim" --> icons for LSP diagnostics
  use "onsails/lspkind-nvim" --> vscode-like pictograms for neovim lsp completion items
  use "hrsh7th/nvim-cmp" --> Autocompletion plugin
  use "hrsh7th/cmp-nvim-lsp" --> LSP source for nvim-cmp
  use "saadparwaiz1/cmp_luasnip" --> Snippets source for nvim-cmp
  use "L3MON4D3/LuaSnip" --> Snippets plugin
end)
