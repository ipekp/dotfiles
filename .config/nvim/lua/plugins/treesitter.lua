return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			highlight = { enable = true },
			indent = { enable = true },
			autotage = { enable = true },
			ensure_installed = {
				"lua",
				"python",
				"c",
				"cpp",
				"bash",
				"awk",
				"html",
				"css",
				"xml",
				"yaml",
				"yang",
				"jinja",
			},
			auto_install = true,
		})
	end,
}
