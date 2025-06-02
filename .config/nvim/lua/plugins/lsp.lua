-- :h ins-completion
return {
	{
		"williamboman/mason.nvim",
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
			"neovim/nvim-lspconfig",
			"saghen/blink.cmp",
		},
		opts = {
			servers = {
				lua_ls = {
					settings = {
						Lua = {
							diagnostics = {
								globals = { "vim" },
							},
						},
					},
				},
			},
		},
		config = function(_, opts)
			require("mason").setup()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "pylsp", "clangd" },
			})

			for server, config in pairs(opts.servers) do
				-- merges with opts[server].capabilities if defined
				-- get_lsp_capabilities includes defaults
				config.capabilities = require('blink.cmp').get_lsp_capabilities(config.capabilities)
				vim.lsp.config(server, config)
				-- require("lspconfig")[server].setup(config)
				vim.lsp.enable(server)
			end
			--
			vim.api.nvim_create_autocmd('LspAttach', {
				callback = function(args)
					local client = vim.lsp.get_client_by_id(args.data.client_id)
					if not client then return end
					if client:supports_method('textDocument/formatting') then
						vim.api.nvim_create_autocmd('BufWritePre', {
							buffer = args.buf,
							callback = function()
								vim.lsp.buf.format({ bufnr = args.buf, id = client.id })
							end,
						})
					end
				end,
			})
		end,

		vim.diagnostic.config({
			virtual_text = true,
			-- virtual_lines = true,
			underline = true,
		})
	},
}
