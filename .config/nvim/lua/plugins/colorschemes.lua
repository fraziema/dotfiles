return{
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
		
	-- {
	-- 	'pwntester/nautilus.nvim', 
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	--config = function()
	-- 	--	require("nautilus").load {
	-- 	--		transparent = true,
	-- 	--	}
	-- 	--end
	-- },

	{
		"Koalhack/darcubox-nvim",
		config = function() vim.cmd("colorscheme darcubox") end
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
