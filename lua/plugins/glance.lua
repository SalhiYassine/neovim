return {
	"dnlhc/glance.nvim",
	config = function()
		require("glance").setup({})
		vim.keymap.set("n", "<leader>gd", "<CMD>Glance definitions<CR>")
		vim.keymap.set("n", "<leader>gr", "<CMD>Glance references<CR>")
		vim.keymap.set("n", "<leader>gt", "<CMD>Glance type_definitions<CR>")
		vim.keymap.set("n", "<leader>gi", "<CMD>Glance implementations<CR>")
	end,
}
