return {
	'stevearc/oil.nvim',
	keys = {
		{ '<leader>e', function() require('oil').toggle_float() end },
	},
	config = function()
		require('oil').setup({
			view_options = {
				show_hidden = true
			},
			float = {
				-- padding = 5
				max_width = 100,
				max_height = 30,
			},
		})
	end
}
