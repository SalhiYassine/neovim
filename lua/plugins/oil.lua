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
				win_options = {
					winbar = "%{v:lua.require('oil').get_current_dir()}",
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
