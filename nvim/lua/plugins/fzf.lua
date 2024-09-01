return {
	"ibhagwan/fzf-lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	keys = {
		{
			"<leader>ff",
			"<cmd>FzfLua files<cr>",
			desc = "Find Files",
		},
		{
			"<leader>fg",
			"<cmd>FzfLua live_grep<cr>",
			desc = "Ripgrep",
		},
		{
			"<leader>fw",
			"<cmd>FzfLua grep<cr>",
			desc = "Grep selected word, but with ability to search in selected folders",
		},
		{
			"<leader>fb",
			"<cmd>FzfLua buffers<cr>",
			desc = "Buffers",
		},
		{
			"<leader>fs",
			"<cmd>FzfLua git_stash<cr>",
			desc = "Git existing stashes",
		},
		{
			"<leader>fm",
			"<cmd>FzfLua git_status<cr>",
			desc = "Git modified files",
		},
		{
			"<leader>fr",
			"<cmd>FzfLua resume<cr>",
			desc = "Resume last search",
		},
	},
}
