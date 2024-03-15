return {
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		config = function()
			local theme = require("gruvbox")
			theme.setup({})
			vim.o.background = "dark" -- or "light"
			vim.cmd([[colorscheme gruvbox]])
		end,
	},
}
