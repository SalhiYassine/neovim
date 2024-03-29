return {
	{
		"dmmulroy/ts-error-translator.nvim",
		config = function()
			require("ts-error-translator").setup()
			vim.lsp.handlers["textDocument/publishDiagnostics"] = function(err, result, ctx, config)
				require("ts-error-translator").translate_diagnostics(err, result, ctx, config)
				vim.lsp.diagnostic.on_publish_diagnostics(err, result, ctx, config)
			end
		end,
	},
	{
		"dmmulroy/tsc.nvim",
		config = function()
			require("tsc").setup({
				use_trouble_qflist = true,
				auto_start_watch_mode = true,
				flags = {
					noEmit = true,
					strict = false,
				},
				pretty_errors = true,
			})
		end,
	},
}
