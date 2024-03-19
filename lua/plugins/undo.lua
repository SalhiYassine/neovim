return {
	{
		"debugloop/telescope-undo.nvim",
		dependencies = {
			{
				"nvim-telescope/telescope.nvim",
				dependencies = { "nvim-lua/plenary.nvim" },
			},
		},
		opts = {
			extensions = {
				undo = {
					use_delta = true,
					diff_context_lines = vim.o.scrolloff,
					saved_only = false,
				},
			},
		},
		keys = {
			{
				"<leader>u",
				"<cmd>Telescope undo<cr>",
				desc = "undo history",
			},
		},
		config = function(_, opts)
			require("telescope").load_extension("undo")
		end,
	},
}
