return {
	{
		"stevearc/oil.nvim",
		opts = {},
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("oil").setup({
				lsp_file_methods = {
					timeout_ms = 10000,
				},
				columns = {
					"icon",
				},
			})

			require("nvim-web-devicons").setup({})

			vim.keymap.set("n", "<C-b>", "<CMD>Oil<CR>")
		end,
	},
}
