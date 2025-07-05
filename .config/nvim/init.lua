
-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = false

-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("options")
--require("lsp")
--require("autocmd")

require("lazy").setup("plugins")

require("keymaps")
require("colorschemes")

--Luasnip setup
-- require("luasnip").config.set_config({ 
-- 	-- Setting LuaSnip config    
-- 	-- -- Enable autotriggered snippets   
-- 	enable_autosnippets = true,    
-- 	-- -- Use Tab (or some other key if you prefer) to trigger visual selection   
-- 	store_selection_keys = "<Tab>", })

-- vim.cmd[[ 
-- " Use Tab to expand and jump through snippets 
-- imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>'  
-- smap <silent><expr> <Tab> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<Tab>'  " Use Shift-Tab to jump backwards through snippets 
-- imap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>' 
-- smap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>' 
-- ]] 
--
-- require("luasnip.loaders.from_lua").lazy_load({paths = "~/.config/nvim/LuaSnip/"})

-- Colorschemes
-- require("gruvbox").setup({
-- 	italic = {
-- 		strings = false,
-- 		emphasis = false,
-- 		comments = false,
-- 		operators = false,
-- 		folds = false,
-- 	},
-- 	transparent_mode = true,
-- })
--
-- require('darcubox').setup({
-- 	options = {
-- 		transparent = true,
-- 		styles = {
-- 			comments = {  }, 
-- 			functions = { bold = true }, 
-- 			keywords = { bold = true },
-- 			types = { bold = true }, 
-- 		}
-- 	}
-- })
--
--
-- require("catppuccin").setup({
-- 	no_italic = true,
-- 	transparent_background = true,
-- 	styles = {
-- 		comments = { NONE },
-- 	}
-- })
--
-- require("tokyonight").setup({
-- 	transparent = true,
-- 	styles = {
-- 		comments = { italic = false },
-- 		keywords = { italic = false },
-- 		functions = { bold = true },
-- 		variables = {},
-- 		-- Background styles. Can be "dark", "transparent" or "normal"
-- 		sidebars = "dark", -- style for sidebars, see below
-- 		floats = "dark", -- style for floating windows
-- 	},
--
-- })
--
-- vim.o.background = "dark"
-- vim.cmd.colorscheme([[tokyonight-storm]])
-- -- vim.cmd.colorscheme([[darcubox]])
-- -- vim.cmd.colorscheme([[nautilus]])
-- -- vim.cmd.colorscheme([[gruvbox]])
-- -- vim.cmd.colorscheme([[everforest]])
-- -- vim.cmd.colorscheme([[catppuccin]])
-- -- vim.cmd.colorscheme([[edge]])
-- -- vim.cmd.colorscheme([[sonokai]])
