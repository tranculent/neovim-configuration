" General settings
set paste
set number
set shada='100,<50,s10,h

" Specify a directory for plugins
call plug#begin('~/.config/nvim/plugged')

" Add nvim-tree.lua plugin
Plug 'kyazdani42/nvim-tree.lua'

" Initialize plugin system
call plug#end()

" Optional: Additional configuration for nvim-tree
lua << EOF
require'nvim-tree'.setup {
  -- your options here
}
EOF

" Keymap to toggle nvim-tree
nnoremap <C-n> :NvimTreeToggle<CR>

" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" Add nvim-cmp and related plugins
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'neovim/nvim-lspconfig'
Plug 'onsails/lspkind-nvim'

" Initialize plugin system
call plug#end()

" Configuration for nvim-cmp
lua << EOF
local cmp = require'cmp'

cmp.setup({
  snippet = {
    expand = function(args)
      -- For `vsnip` users.
      vim.fn["vsnip#anonymous"](args.body)
      -- Uncomment the next lines if you're using other snippet engines.
      -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
      -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
      -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
    end,
  },
  mapping = {
    ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
    ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
    ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
    ['<C-e>'] = cmp.mapping({
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    }),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    -- For `vsnip` users.
    { name = 'vsnip' },
    -- Uncomment if using other snippet engines.
    -- { name = 'luasnip' }, -- For `luasnip` users.
    -- { name = 'ultisnips' }, -- For `ultisnips` users.
    -- { name = 'snippy' }, -- For `snippy` users.
  }, {
    { name = 'buffer' },
  })
})

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline('/', {
  sources = {
    { name = 'buffer' }
  }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  })
})

-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
require('lspconfig').clangd.setup {
  capabilities = capabilities
}
EOF

" Basic settings
syntax on
set number
set relativenumber
set nowrap
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set mouse=a

" Airline settings
let g:airline_powerline_fonts = 1

" NerdTree settings
nnoremap <C-n> :NvimTreeToggle<CR>

" Telescope settings
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Remove coc.nvim related settings
" let g:coc_global_extensions = ['coc-clangd']
