return {
	'stevearc/oil.nvim',
	keys = {
		{ '<leader>o', function() require('oil').toggle_float() end },
	},
	config = function()
		require('oil').setup({
			view_options = {
				show_hidden = true
			},
			float = {
				padding = 5
			},
		})
	end
}
