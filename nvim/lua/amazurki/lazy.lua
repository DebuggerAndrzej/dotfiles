local plugins = {
	"rebelot/kanagawa.nvim",
	"windwp/nvim-autopairs",
	"numToStr/Comment.nvim",
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",
	"nvim-lualine/lualine.nvim",
	"nvim-treesitter/nvim-treesitter",
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