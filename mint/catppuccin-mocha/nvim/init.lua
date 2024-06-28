-- For most purposes, Lua within Neovim offers a superior performance profile. 

-- https://github.com/nanotee/nvim-lua-guide
-- https://neovim.io/doc/user/lua-guide.html
-- https://vim.rtorr.com/


-- This config uses vim-plug as plugin manager
-- Plugins | Warning! You may want to install these one by one because some installations may freeze
-- A little side note: You may want to visit the README files of plugin repos for more information


local vim = vim
local Plug = vim.fn['plug#']
local PLUGIN_PATH = '~/.local/share/nvim/plugins' -- path depends on the OS

vim.call('plug#begin',PLUGIN_PATH)

-- Color Scheme
Plug('catppuccin/nvim', { ['as'] = 'catppuccin' })

-- Beautify
Plug('crispgm/nvim-tabline')
Plug('nvim-lualine/lualine.nvim')

-- Glyphs
Plug('ryanoasis/vim-devicons')
Plug('nvim-tree/nvim-web-devicons')

-- Files
Plug('nvim-tree/nvim-tree.lua')
Plug('nvim-telescope/telescope.nvim')
Plug('nvim-lua/plenary.nvim');

-- Syntax
Plug('nvim-treesitter/nvim-treesitter')
Plug('windwp/nvim-autopairs')
Plug('lukas-reineke/indent-blankline.nvim')

-- Autocompletion
Plug('neovim/nvim-lspconfig')
Plug('hrsh7th/nvim-cmp')
Plug('hrsh7th/cmp-nvim-lsp')
Plug('hrsh7th/cmp-buffer')
Plug('hrsh7th/cmp-path')
Plug('hrsh7th/cmp-cmdline')
Plug('L3MON4D3/LuaSnip')
Plug('saadparwaiz1/cmp_luasnip')
Plug('simrat39/symbols-outline.nvim')

vim.call('plug#end')

-- === xxxxxxxx INITIALIZE PLUGINS xxxxxxxx === --


-- >> NVIM-CMP << --

local cmp = require('cmp')

cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  }, {
    { name = 'buffer' },
  })
})



-- >> LSPCONFIGS << --

-- == Language Server Installations == --

-- 1. Download your preferred language server
-- 2. Initialize: require('lspconfig').<lsp_name>.setup({})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- ::::PYRIGHT::: --

require('lspconfig').pyright.setup {
  capabilities = capabilities
}

-- >> SYMBOLS OUTLINE << --

require("symbols-outline").setup()


-- >> LUALINE << --

require('lualine').setup({
    options = {
        component_separators = '',
        section_separators = ''
    },
    sections = {
        lualine_a = { {'mode',fmt = function(str) return ' ' .. str end } },
        lualine_x = { {'fileformat', symbols = {unix = ''}} }
    },
    extensions = {'nvim-tree'}
})


-- >> TABLINE << --

require('tabline').setup({
    show_index = false,
	show_icon = true,
	brackets = { ' ', ' ' }
})

-- >> CATPPUCCIN << --

require('catppuccin').setup()

-- >> NVIM TREE << --

require('nvim-tree').setup({
    renderer = {
        symlink_destination = false
    }
})


-- >> INDENT GUIDE < --
 
require('ibl').setup() -- Scope requires treesitter to be set up


-- >> AUTO PAIRS << --

require('nvim-autopairs').setup()


-- >> TREESITTER << --

require('nvim-treesitter.configs').setup({ highlight = { enable = true, } }) -- Treesitter requires MinGW gcc compiler, :TSInstall <lang> | All, to parse highlighter


-- === xxxxxxxx END OF PLUGINS xxxxxxxx === --





-- === xxxxxxxx FUNCTIONS xxxxxxxx === --


-- === xxxxxxxx END OF FUNCTIONS xxxxxxxx === --





-- === Keymaps === --

vim.keymap.set('n', '<F1>', ':set number!<CR>', { noremap = true, silent = true})
vim.keymap.set('n', '<F2>', ':set relativenumber!<CR>', { noremap = true, silent = true})
vim.keymap.set('n', '<F3>', ':set wrap!<CR>', { noremap = true, silent = true})
vim.keymap.set('n', '<F5>', ':Telescope find_files<CR>', { noremap = true, silent = true})
vim.keymap.set('n', '<F6>', ':NvimTreeToggle<CR>', { noremap = true, silent = true})
vim.keymap.set('n', '<F7>', ':SymbolsOutline<CR>', { noremap = true, silent = true})

-- === Commands === --

vim.cmd('colorscheme catppuccin-mocha')
vim.cmd('set tabstop=4')    
vim.cmd('set shiftwidth=4')
vim.cmd('set expandtab')
vim.cmd('set clipboard=unnamed')
vim.cmd('cd ~/Desktop/projects')


-- === Options === --

vim.opt.cursorline = true
vim.opt.autochdir = true
vim.opt.wrap = false
vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.showmode = false
