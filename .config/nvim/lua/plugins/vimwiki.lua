return {
	{
		"vimwiki/vimwiki",
		config = function() end,
		init = function()
			local opts = {
				vimwiki_folding = "list",
				vimwiki_list = { {
					path = "~/notes",
					syntax = "markdown",
					ext = ".md",
				} },
				vimwiki_markdown_link_ext = 1,
				taskwiki_markup_syntax = "markdown",
				markdown_folding = 1,
			}
			--vim.print(opts)
			for k, v in pairs(opts) do
				vim.g[k] = v
			end
		end
	},
	vim.keymap.set("n", "tl", "<cmd>VimwikiToggleListItem<CR>", { desc = "Toggle task" }),
}

-- mapping of previous option to this one
-- let g:vimwiki_folding = 'list'
-- let g:vimwiki_list = [{'path':'~/notes', 'syntax': 'markdown', 'ext': '.md'}]
-- let g:vimwiki_ext2syntax = {'.md':'markdown','.markdown':'markdown', '.mdown': 'markdown'}
--
-- " shows link as [text](text.md) rather than [text](text)
-- let g:vimwiki_markdown_link_ext = 1
-- let g:taskwiki_markup_syntax = 'markdown'
-- let g:markdown_folding = 1
-- " remap task which conflicts with tmux
-- nmap <Leader>tl <Plug>VimwikiToggleListItem-
