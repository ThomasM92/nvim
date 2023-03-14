return {
	'nvim-lualine/lualine.nvim',
	dependencies = { 'kyazdani42/nvim-web-devicons', lazy = true },
	-- lazy = true,
	config = function()
		require('lualine').setup({
			-- options = {
				--- @usage 'rose-pine' | 'rose-pine-alt'
				theme = 'rose-pine'
				-- theme = 'gruvbox-flat'
				-- theme = 'github-theme'
				-- }
			})
		end,
	}
