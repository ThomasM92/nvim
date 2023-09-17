return {
	{
		'nvim-telescope/telescope.nvim',
		-- lazy = true,
		keys = {
			{ '<leader>r' },
			{ '<leader>f' },
			{ '<leader>b' },
			{ '<leader>t' },
		},
		dependencies = {
			{ 'nvim-lua/plenary.nvim', lazy = true }
		},
		config = function()
			local builtin = require('telescope.builtin')
			local options = { noremap = true, silent = true }

			vim.keymap.set('n', '<leader>r', function() builtin.oldfiles({ layout_strategy = 'horizontal' }) end, options)
			vim.keymap.set('n', '<leader>f', function() builtin.find_files({ layout_strategy = 'horizontal' }) end, options)
			vim.keymap.set('n', '<leader>b', function() builtin.buffers({ initial_mode = "normal" }) end, options)
			vim.keymap.set('n', '<leader>t', function() builtin.live_grep() end, options)

			require('telescope').setup({
				pickers = {
					buffers = {
						theme = "dropdown",
						mappings = {
							n = {
								["d"] = "delete_buffer",
							}
						},
					}
				},
			})
		end
	},
}
