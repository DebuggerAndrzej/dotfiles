local plugins = {
	"rebelot/kanagawa.nvim",
	"windwp/nvim-autopairs",
	"numToStr/Comment.nvim",
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",
	"nvim-lualine/lualine.nvim",
	"nvim-treesitter/nvim-treesitter",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-cmdline",
	"hrsh7th/nvim-cmp",
	"L3MON4D3/LuaSnip",
	"saadparwaiz1/cmp_luasnip",
	'loctvl842/monokai-pro.nvim',
	'navarasu/onedark.nvim',
	{
		"nvim-telescope/telescope.nvim", tag = '0.1.2',
		dependencies = { "nvim-lua/plenary.nvim" },
    },
	{
		"nvim-tree/nvim-tree.lua",
		 dependencies = { "nvim-tree/nvim-web-devicons" },
	},
}

local opts = {}

require("lazy").setup(plugins, opts)
