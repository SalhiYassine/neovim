return {
	{
		"kylechui/nvim-surround",
		version = "*",
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup()
			vim.api.nvim_set_keymap("n", "<leader>ern", "cst", {})
			vim.api.nvim_set_keymap("v", "{", "S}", {})
			vim.api.nvim_set_keymap("v", "(", "S)", {})
			vim.api.nvim_set_keymap("v", "[", "S]", {})
		end,
	},
}
