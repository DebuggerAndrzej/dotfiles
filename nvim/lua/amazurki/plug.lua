local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug 'EdenEast/nightfox.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug('nvim-telescope/telescope.nvim', {tag = '0.1.0' })
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})
Plug('ms-jpq/chadtree', {branch = 'chad', ['do'] = 'python3 -m chadtree deps'})

vim.call('plug#end')
