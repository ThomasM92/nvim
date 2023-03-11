return {
	{
		'numToStr/FTerm.nvim',
		config = function()
			local fterm = require("FTerm")

			fterm.setup({
				border = 'rounded',
				dimensions  = {
					height = 0.9,
					width = 0.9,
				},
			})

			local options = { noremap = true, silent = true }
			vim.keymap.set('n', '<leader>t', '<CMD>lua require("FTerm").toggle()<CR>', options)
			vim.keymap.set('t', '<C-\\>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', options)

			local gitui = fterm:new({
				ft = 'fterm_gitui', -- You can also override the default filetype, if you want
				cmd = "gitui",
				-- dimensions = {
				--     height = 0.9,
				--     width = 0.9
				-- }
			})

			-- Use this to toggle gitui in a floating terminal
			vim.keymap.set('n', '<leader>gg', function()
				gitui:toggle()
			end)
		end
	}
}
