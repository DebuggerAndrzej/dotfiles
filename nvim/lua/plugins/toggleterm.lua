return {
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		config = true,
		opts = {},
		keys = {
			{
				"<leader>t",
				"<cmd>ToggleTerm direction=float<cr>",
				desc = "Open floating terminal",
			},
		},
	},
}
