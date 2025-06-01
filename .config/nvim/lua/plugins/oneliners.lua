return {
	{ -- ssh tunneling and copying to clipboard
		"ojroques/vim-oscyank",
	},
	{ -- git plugin
		"tpope/vim-fugitive",
	},
	{
		"j-hui/fidget.nvim",
		opts = {},
	},
	{ -- meh plugin @TODO check how it uses treesitter
		"windwp/nvim-ts-autotag",
		config = function()
			require("nvim-ts-autotag").setup()
		end,
	},
}
