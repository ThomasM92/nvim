return {
	{
		'nvim-telescope/telescope.nvim',
		dependencies = {
			'nvim-lua/plenary.nvim'
		},
		config = function()
			local builtin = require('telescope.builtin')
			local options = { noremap = true, silent = true }

			vim.keymap.set('n', '<leader>ff', function() builtin.find_files({ layout_strategy = 'horizontal' }) end, options)
			vim.keymap.set('n', '<leader>fg', function() builtin.git_files() end, options)
			vim.keymap.set('n', '<leader>fb', function() builtin.buffers({ initial_mode = "normal" }) end, options)
			vim.keymap.set('n', '<leader>ft', function() builtin.live_grep() end, options)

			require('telescope').setup({
				pickers = {
					buffers = {
						theme = "dropdown",
					}
				},
				extensions = {
					project = {
						base_dirs = {
							'~/Documents/dev/ElliCAD',
							'~/Documents/dev/ElliFAO',
							'~/Documents/dev/ElliScene',
							'~/Documents/dev/EllisettingMeteor',
						},
						hidden_files = true, -- default: false
						theme = "dropdown",
						order_by = "asc",
						search_by = "title",
						sync_with_nvim_tree = true, -- default false
					}
				}
			})

			require('telescope').load_extension('project')
		end
	},
	{
		'nvim-telescope/telescope-project.nvim',
	},
}
