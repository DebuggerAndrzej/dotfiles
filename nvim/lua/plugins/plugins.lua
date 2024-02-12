local plugins = {
	"neanias/everforest-nvim",
	"nvim-treesitter/nvim-treesitter",
	"windwp/nvim-autopairs",
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
