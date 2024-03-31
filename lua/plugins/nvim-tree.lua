return {
	{
		"nvim-tree/nvim-tree.lua",
		config = function()
			require("nvim-tree").setup()
			vim.api.nvim_set_keymap("n", "<C-t>", "<Nop>", { noremap = true, silent = true })
			vim.api.nvim_set_keymap("n", "<C-t>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
		end,
	},
}
