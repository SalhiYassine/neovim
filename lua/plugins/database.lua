return {
	"tpope/vim-dotenv",
	{
		"tpope/vim-dadbod",
		dependencies = {
			"kristijanhusak/vim-dadbod-ui",
			"kristijanhusak/vim-dadbod-completion",
		},
		config = function()
			local mapper = vim.keymap
			mapper.set("n", "<C-m>", "<Nop>")
			mapper.set("n", "<C-m>", "<cmd>DBUIToggle<CR>")
		end,
	},
}
