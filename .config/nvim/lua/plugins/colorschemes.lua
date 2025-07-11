return{
	{
		"NLKNguyen/papercolor-theme",     priority = 1000,
	},
	{
		"ptdewey/darkearth-nvim",     priority = 1000,
	},

	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		opts = {
			transparent_background = true,
		}
	},

	{
		"folke/tokyonight.nvim",
		priority = 1000,
		opts = { }
	},
		
	{   
		"olimorris/onedarkpro.nvim",   
		priority = 1000, 
	},

	{
		"Koalhack/darcubox-nvim",
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
		}

	}

}
