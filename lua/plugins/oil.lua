return {
	{
		"stevearc/oil.nvim",
		opts = {},
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("oil").setup({

				default_file_explorer = true,
				view_options = {
					show_hidden = true,
				},

				autosave_changes = true,
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
