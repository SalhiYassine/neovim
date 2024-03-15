return {
	{
		"nvim-pack/nvim-spectre",
		config = function()
			local specter = require("spectre")
			local function map(lhs, rhs, opts)
				vim.keymap.set("n", lhs, rhs, opts or {})
			end

			map("<leader>s", function()
				specter.open_file_search()
			end)

			map("<leader>S", function()
				specter.toggle()
			end)
		end,
	},
}
