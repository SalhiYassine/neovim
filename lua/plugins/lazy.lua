return {
	{
		"kdheepak/lazygit.nvim",
		lazy = true,
		cmd = {
			"LazyGit",
			"LazyGitConfig",
			"LazyGitCurrentFile",
			"LazyGitFilter",
			"LazyGitFilterCurrentFile",
		},
		-- optional for floating window border decoration
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		-- setting the keybinding for LazyGit with 'keys' is recommended in
		-- order to load the plugin when the command is run for the first time
		keys = {
			{ "<C-g>", "<cmd>LazyGit<cr>", desc = "LazyGit" },
		},
	},
	{
		"crnvl96/lazydocker.nvim",
		config = function()
			require("lazydocker").setup()
			vim.keymap.set(
				"n",
				"<leader>k",
				"<cmd>LazyDocker<CR>",
				{ desc = "Toggle LazyDocker", noremap = true, silent = true }
			)
		end,
		requires = {
			"MunifTanjim/nui.nvim",
		},
	},
	{
		"crnvl96/lazydocker.nvim",
		event = "VeryLazy",
		opts = {}, -- automatically calls `require("lazydocker").setup()`
		dependencies = {
			"MunifTanjim/nui.nvim",
		},
	},
}
