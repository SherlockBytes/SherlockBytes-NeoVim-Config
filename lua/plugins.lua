return {
	-- other plugins
	{
		"tpope/vim-fugitive",
		config = function()
			vim.api.nvim_set_keymap("n", "<leader>gs", ":Git<CR>", { noremap = true, silent = true })
		end,
	},
	{
		"BurntSushi/ripgrep",
		run = "cargo install ripgrep",
	},
	-- other plugins
}
