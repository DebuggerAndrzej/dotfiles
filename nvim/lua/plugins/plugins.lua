local plugins = {
	"shaunsingh/nord.nvim",
	"nvim-treesitter/nvim-treesitter",
	"windwp/nvim-autopairs",
	"lewis6991/gitsigns.nvim",
    "rhysd/git-messenger.vim",
	"neovim/nvim-lspconfig",
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-cmdline",
	"L3MON4D3/LuaSnip",
	"saadparwaiz1/cmp_luasnip",
	{
	"nvim-telescope/telescope.nvim",
		dependencies = { "nvim-lua/plenary.nvim" }
	},
	{
	"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
}

local opts = {}

require("lazy").setup(plugins, opts)
