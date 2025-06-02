return {
	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				-- lua require('conform').format() to test
				lua = { "stylua" },
				python = { "isort", "black" },
			},
			format_on_save = {
				timeout_ms = 500,
				lsp_format = "fallback",
			},
		},
	},
}
