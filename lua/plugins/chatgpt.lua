return { -- Lazy
	{
		"jackMort/ChatGPT.nvim",
		event = "VeryLazy",
		config = function()
			require("chatgpt").setup()
			local chatgpt = require("chatgpt")

			vim.api.nvim_set_keymap("n", "<leader>cc", "<cmd>ChatGPT<CR>", { noremap = true, silent = true })
		end,
		dependencies = {
			"MunifTanjim/nui.nvim",
			"nvim-lua/plenary.nvim",
			"folke/trouble.nvim",
			"nvim-telescope/telescope.nvim",
		},
	},
}
