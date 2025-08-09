return {
    "lervag/vimtex",
	lazy = false, 
	init = function()
    -- put vim.g.vimtex_* settings here
	vim.g.vimtex_view_method = 'zathura'
	vim.g.vimtex_quickfix_autoclose_after_keystrokes = 2
	vim.g.vimtex_quickfix_open_on_warning = 0
--	vim.g.vimtex_compiler_method = latex
	vim.g.vimtex_indent_enable = 0 
	vim.g.tex_indent_items = 0
	vim.g.vimtex_indent_lists = {}
  end
}
