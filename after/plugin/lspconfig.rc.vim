set completeopt=menu,menuone,noselect

lua << EOF
 -- Setup nvim-cmp.
local cmp = require'cmp'
local lspkind = require'lspkind'
local lspconf = require'lspconfig'
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

lspkind.init({
  with_text = true,
  preset = 'codicons',
})

cmp.setup({
  formatting = {
    format = function(entry, vim_item)
      vim_item.kind = lspkind.presets.default[vim_item.kind]
      vim_item.menu = ({
        nvim_lsp = "[LSP]",
        look = "[Dict]",
        buffer = "[Buffer]"
      })[entry.source.name]
      return vim_item
    end
  },

  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` user.
    end,
  },

  mapping = {
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  },

  sources = {
    { name = 'nvim_lsp' },

    -- For vsnip user.
    { name = 'vsnip' },
    { name = 'buffer' },
  }
})

-- Setup lspconfig.
local servers = {
  "pyright", -- python
  -- "pylsp", -- python
  "tsserver", -- typescript
}

for _, server in ipairs(servers) do
  lspconf[server].setup {
    capabilities = capabilities
  }
end

EOF

