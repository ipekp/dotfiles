-- See :help oil-actions for a list of all available actions
return {
	{
		"stevearc/oil.nvim",
		opts = {},
		dependencies = { { "echasnovski/mini.icons", opts = {} } },
		lazy = false,
	},
	vim.keymap.set("n", "-", "<cmd>Oil --float<CR>", { desc = "Open parent directory in oil" }),
}
