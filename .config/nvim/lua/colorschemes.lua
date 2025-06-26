
--  Colorschemes
require("gruvbox").setup({
	italic = {
		strings = false,
		emphasis = false,
		comments = false,
		operators = false,
		folds = false,
	},
	transparent_mode = true,
})


require('darcubox').setup({
	options = {
		transparent = true,
		styles = {
			comments = {  }, 
			functions = { bold = true }, 
			keywords = { bold = true },
			types = { bold = true }, 
		}
	}
})


require("catppuccin").setup({
	no_italic = true,
	transparent_background = true,
	styles = {
		comments = { NONE },
	}
})

require("tokyonight").setup({
	transparent = true,
	styles = {
		comments = { italic = false },
		keywords = { italic = false },
		functions = { bold = true },
		variables = {},
		-- Background styles. Can be "dark", "transparent" or "normal"
		sidebars = "dark", -- style for sidebars, see below
		floats = "dark", -- style for floating windows
	},

})

vim.o.background = "dark"
-- vim.cmd.colorscheme([[tokyonight-storm]])
-- vim.cmd.colorscheme([[darcubox]])
-- vim.cmd.colorscheme([[gruvbox]])
-- vim.cmd.colorscheme([[everforest]])
-- vim.cmd.colorscheme([[catppuccin]])
-- vim.cmd.colorscheme([[edge]])
-- vim.cmd.colorscheme([[sonokai]])
vim.cmd.colorscheme("onedark_dark")
