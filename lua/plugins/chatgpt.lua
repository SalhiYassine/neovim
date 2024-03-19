return { -- Lazy
	{
		"jackMort/ChatGPT.nvim",
		event = "VeryLazy",
		config = function()
			require("chatgpt").setup()
			local chatgpt = require("chatgpt")
		end,
		dependencies = {
			"MunifTanjim/nui.nvim",
			"nvim-lua/plenary.nvim",
			"folke/trouble.nvim",
			"nvim-telescope/telescope.nvim",
		},
	},
}
