require'nvim-treesitter.configs'.setup {
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
	ensure_installed = { "rust", "python", "lua" },
	sync_install = false,
}
