return {
	"MagicDuck/grug-far.nvim",
	config = function()
		require("grug-far").setup({})
	end,
	keys = {
		{
			"<leader>g",
			"<cmd>GrugFar<cr>",
			desc = "Search and replace",
		},
	},
}
