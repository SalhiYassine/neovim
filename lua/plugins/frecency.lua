return {
	{
		"nvim-telescope/telescope-frecency.nvim",
		config = function()
			require("telescope").load_extension("frecency")
			vim.keymap.set("n", "<leader><leader>", function()
				require("telescope").extensions.frecency.frecency({
					workspace = "CWD",
					ignore_patterns = { "git/*", "*/tmp/*", "*/node_modules/*" },
				})
			end)
		end,
	},
}
