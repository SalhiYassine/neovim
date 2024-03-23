function IsWithinAlgomoPlatform()
	local file = vim.fn.expand("%:p")
	local srcIndex = file:find("/algomo/repos/platform/", 1, true)
	if srcIndex then
		return true
	end
	return false
end

return {
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		config = function()
			function _G.set_terminal_keymaps()
				local opts = { noremap = true }
				vim.api.nvim_buf_set_keymap(0, "t", "<esc>", [[<C-\><C-n>]], opts)
				vim.api.nvim_buf_set_keymap(0, "t", "jk", [[<C-\><C-n>]], opts)
				vim.api.nvim_buf_set_keymap(0, "t", "<C-h>", [[<C-\><C-n><C-W>h]], opts)
				vim.api.nvim_buf_set_keymap(0, "t", "<C-j>", [[<C-\><C-n><C-W>j]], opts)
				vim.api.nvim_buf_set_keymap(0, "t", "<C-k>", [[<C-\><C-n><C-W>k]], opts)
				vim.api.nvim_buf_set_keymap(0, "t", "<C-l>", [[<C-\><C-n><C-W>l]], opts)
			end

			local function map(lhs, rhs, opts)
				vim.keymap.set("n", lhs, rhs, opts or {})
			end

			local testPlatformCommand = 'clear && docker exec -it server sh -c "cd api/server && yarn test:local "'

			map("<leader>ta", function()
				local t = require("toggleterm")
				t.setup({
					shell = "/bin/zsh",
					direction = "float",
				})

				local isWithinPlatform = IsWithinAlgomoPlatform()
				if isWithinPlatform then
					return t.exec(testPlatformCommand)
				else
					return print("not within platform")
				end
			end)

			map("<leader>tf", function()
				local t = require("toggleterm")
				t.setup({
					shell = "/bin/zsh",
					direction = "float",
				})

				local isWithinPlatform = IsWithinAlgomoPlatform()
				if isWithinPlatform then
					local fileName = vim.fn.expand("%:t")
					local command = testPlatformCommand .. "--testPathPattern=" .. fileName
					print(command)
					return t.exec(command)
				else
					return print("not within platform")
				end
			end)
		end,
	},
}
