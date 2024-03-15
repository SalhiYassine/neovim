return {
	{
		"NeogitOrg/neogit",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"sindrets/diffview.nvim",
			"nvim-telescope/telescope.nvim",
		},
		config = function()
			local neogit = require("neogit")

			neogit.setup({})

			local mapper = vim.keymap
			mapper.set("n", "<C-g>", "<cmd>Neogit kind=floating<CR>")
		end,
	},
}
