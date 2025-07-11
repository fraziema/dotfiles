return{
	{
		"NLKNguyen/papercolor-theme",     priority = 1000,
	},

	{
		"ptdewey/darkearth-nvim",     priority = 1000,
	},
	
	-- when the colorscheme has a setup, you need to include it like this
	-- config = function()
	-- 	require("<COLORSCHEME>").setup({
		-- 	example setting variables/flags here
	-- 		no_italic = true,
	-- 		transparent_background = true,
	-- 		styles = {
	-- 			comments = { NONE },
	-- 		}
	-- 		...
	-- 	})
	-- end

	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				no_italic = true,
				transparent_background = true,
				styles = {
					comments = { NONE },
				}
			})
		end
	},

	{
		"folke/tokyonight.nvim",
		priority = 1000,
		opts = { },
		config = function()
			require("tokyonight").setup({
				transparent = false,
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
		end
	},

	{   
		"olimorris/onedarkpro.nvim",   
		priority = 1000, 
	},

	{
		"Koalhack/darcubox-nvim",
		config = function()
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
		end
	},

	{
		'sainnhe/sonokai',
		lazy = false,
		priority = 1000,
		config = function()
			-- Optionally configure and load the colorscheme
			-- directly inside the plugin declaration.
			vim.g.sonokai_enable_italic = false
		end
	},

	{
		'sainnhe/edge',
		lazy = false,
		priority = 1000,
		config = function()
			-- Optionally configure and load the colorscheme
			-- directly inside the plugin declaration.
			vim.g.edge_enable_italic = false
		end
	},

	{
		'sainnhe/everforest',
		lazy = false,
		priority = 1000,
		config = function()
			-- Optionally configure and load the colorscheme
			-- directly inside the plugin declaration.
			vim.g.everforest_enable_italic = false
		end
	},

	{ 
		"ellisonleao/gruvbox.nvim",
		priority = 1000 ,
		config = true,
		opts = {
			transparent = true,
		},
		config = function()
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
		end

	}

}
