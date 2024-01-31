return {
	-- "ntk148v/komau.vim",
	'rose-pine/neovim',
	lazy = false, -- make sure we load this during startup if it is your main colorscheme
	priority = 1000, -- make sure to load this before all the other start plugins
	-- name = 'komau',
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
		-- vim.cmd('colorscheme komau')
	end
}
