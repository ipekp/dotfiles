-- default options

vim.keymap.set("n", "<leader>", "<nop>")
vim.keymap.set("v", "<leader>", "<nop>")
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.nu = true
vim.opt.rnu = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.signcolumn = "yes:1"

vim.opt.clipboard = "unnamedplus"
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4

-- keymaps

vim.keymap.set("n", "<leader><leader>x", "<cmd>source %<CR>")
vim.keymap.set("n", "<leader>x", ":.lua<CR>")
vim.keymap.set("n", "<leader>ww", "<cmd>edit ~/notes/index.md<CR>")

require("config.lazy")
