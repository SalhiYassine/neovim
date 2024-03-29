return {
	"f-person/git-blame.nvim",
	{
		"NeogitOrg/neogit",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"sindrets/diffview.nvim",
			"nvim-telescope/telescope.nvim",
		},
		config = function()
			local neogit = require("neogit")

			neogit.setup({
				integrations = {
					diffview = true,
				},
			})

			local mapper = vim.keymap
			mapper.set("n", "<C-g>", "<cmd>Neogit<CR>")
			mapper.set("n", "<leader>gb", "<cmd>Telescope git_branches<CR>")
		end,
	},
}
