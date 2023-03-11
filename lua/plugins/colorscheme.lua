
return {
	-- {
	-- 	'no-clown-fiesta/no-clown-fiesta.nvim',
	-- 	lazy = false, -- make sure we load this during startup if it is your main colorscheme
	-- 	priority = 1000, -- make sure to load this before all the other start plugins
	-- 	name = 'no-clown-fiesta',
	-- 	config = function()
	-- 		vim.cmd([[
	-- 		set termguicolors
	-- 		set background=dark " or light
	--
	-- 		colorscheme no-clown-fiesta
	-- 		]]) -- load the colorscheme here
	-- 	end
	-- },
	-- {
	-- 	'Lokaltog/vim-monotone',
	-- 	lazy = false, -- make sure we load this during startup if it is your main colorscheme
	-- 	priority = 1000, -- make sure to load this before all the other start plugins
	-- 	name = 'monotone',
	-- 	config = function()
	-- 		vim.cmd([[
	-- 			set termguicolors
	-- 			set background=dark " or light
	-- 			colorscheme monotone
	-- 		]]) -- load the colorscheme here
	-- 	end
	-- },
	{
		'rose-pine/neovim',
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
		name = 'rose-pine',
		config = function()
			require('rose-pine').setup({
				--- @usage 'auto'|'main'|'moon'|'dawn'
				variant = 'auto',
				--- @usage 'main'|'moon'|'dawn'
				dark_variant = 'main',
				disable_background = true,
			})

			-- Set colorscheme after options
			vim.cmd('colorscheme rose-pine')
		end
	},
}
